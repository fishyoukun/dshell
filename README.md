# **dshell**

## a re-edition ushell tool for the one which I used in my previous company 



when I worked in my previous company, there is an utility called ushell, which is a great tool for debugging the binary in linux. And I would like to re-edition it although I don't have the code of it.

This code here is based on my understanding on linux, I don't promise it will function as the original one.



usage:

go to release folder

`make all`

> :after build successfully, you will find two binaries in output folder
>
> :<demo.out is a sample application, the dshell is the tool>

`./demo.out &`

`./dshell`

`add 1,2`



the `add` function in demo will be excuted and printed.

Have fun.

