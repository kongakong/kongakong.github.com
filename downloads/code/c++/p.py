res = []
import itertools

def main():
    cmpl = [1, 2, 3, 3, 3]
    target = 6
    for n in range(0, 6):
        for i in itertools.permutations(cmpl[0:n]):
            print i


if __name__ == "__main__":
    main()
