import std.stdio;
import std.conv;
import std.algorithm;
import std.algorithm.sorting;


void main(){
    int arrsize;
    write();
    readf("%d\n",arrsize);
    string arrval;
    write();
    readf("%s\n",arrval);
    int[] val= new sortIndex().split(arrval,arrsize);
    int[] index= new sortIndex().sortedIndex(val);
    index.each!(x => writef("%d ",x+1)),write("\n");
}

class sortIndex{
    int[] sortedIndex(int[] x){
        int[] index=new int[x.length];       
        makeIndex!("a < b")(x,index);
        return index;
    }

    int[] split(string y,int arrsize){
        int x;
        int[] val;
        for(int i;i<y.length;i++){
            if(y[i]==' '){
                val~= to!int(y[x..i]);
                x=i+1;
            }if(val.length==arrsize-1){
                val~= to!int(y[x..$]);
                break;
            }
        }
        return val;
    }
}
