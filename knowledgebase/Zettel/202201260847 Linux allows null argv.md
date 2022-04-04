> On [[Linux]], argv can be specified as NULL, which has the same effect as specifying this argument as a pointer to a list containing a single [[Null pointer|NULL pointer]]. Do not take advantage of this misfeature! It is non standard and non portable: on most other [[UNIX]] systems doing this will result in an error (EFAULT)._

# Flashcards #flashcards 

On Linux, what is the minimum length of argv?::0.
<!--SR:!2022-03-17,33,250-->

On Linux, what is the minimum value of argc?::0.
<!--SR:!2022-03-18,34,250-->
