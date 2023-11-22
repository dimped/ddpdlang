import std.stdio;
import solver;
import std.conv;
import std.algorithm;


void main(){
    int ncase;
    write();
    readf("%d\n",ncase);
    string sval;
    write();
    readf("%s\n",sval);
    int[] val= new SolveIndex().split(sval,ncase);
    int[] index= new SolveIndex().solverCase(val);
    index.each!(x => writef("%d ",x+1)),write("\n");
}