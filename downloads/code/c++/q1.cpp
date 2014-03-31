#include <iostream>
#include <vector>
using namespace std;
static std::string mas="+";
static std::string menos="-";
int recurs=0;
int result=0;
std::string str="";
std::string sign="";
void count2(int k, std::vector<int> d, int total, int temp, bool flag, unsigned short int pos){
   	mas="+";
   	menos="-";
   	if(pos==(d.size())){
   		total+=temp;
   		if(total==k){
   			result++;
  			std::cout << sign << "=" << k<<std::endl;
   			str="";
   		}
   		recurs++;
   		return;
   	}    
       //Sum sign.
   	sign=sign.substr(0,sign.size()-recurs*2);
   	sign.append(mas+=std::to_string(d[pos]));
   	count2(k,d,total+temp,+d[pos],true,pos+1);  
        //Rest sign
   	sign=sign.substr(0,sign.size()-recurs*2);
  	sign.append(menos+=std::to_string(d[pos]));
   	count2(k,d,total+temp,-d[pos],false,pos+1);  
    	//Append digit
   	if(flag==true)
   		count2(k,d,total,10*temp-d[pos],true,pos+1);
   	else
   		count2(k,d,total,+10*temp+d[pos],false,pos+1);
   }
 
int main() {
  
static const int arr[] = {1,2,3,3,3};
 std::vector<int> vec (arr, arr + sizeof(arr) / sizeof(arr[0]) );

count2(6,vec,0,0,true,0);
//	cout << s;
	return 0;
}
