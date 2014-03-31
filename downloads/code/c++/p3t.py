from functools import partialmethod
class Cell(object):
     @property
     def alive(self):
         return self._alive
     def set_state(self, state):
         self._alive = bool(state)
     set_alive = partialmethod(set_state, True)
     set_dead = partialmethod(set_state, False)


def main():
    c = Cell()
    print( c.alive)
    c.set_alive()
    print( c.alive)


if __name__ == "__main__":
    main()
