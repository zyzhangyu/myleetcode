剑指 Offer 09. 用两个栈实现队列

栈:先进后出
队列:先进先出

要求:实现实现队列的尾部插入与头部删除！

头部删除:  栈底元素是无法直接删除的,需要将上访所有元素出栈
尾部插入:  栈可以实现

双栈可实现列表倒序: 
    假设有含有三个元素的栈A=[1,2,3]和空栈B=[].
    若循环执行A元素出栈，并添加入B栈，直到A=[].
    则B=[3,2,1],即栈B元素实现栈A元素倒序。

利用栈B删除队首元素。

设计:
尾部插入:A用来加入队尾appendTail()，将数组val加入A即可。
头部删除: 
1.当栈B不为空，B中仍有已完成倒序的元素，因为直接返回B的栈顶元素。
2.当A,B都为空,即两个栈都为空，无元素，因此返回-1.
3.A不为空，B为空，将A元素移至B,实现元素倒序，并返回B的栈顶元素。


if (stack2.length == 0) 可以写层 if(!stack2.length)
while(stack1.length > 0) 可以写成 while(stack1.length)


var CQueue = function() {
   this.stack1 = []
   this.stack2 = []
   };

/** 
 * @param {number} value
 * @return {void}
 */
CQueue.prototype.appendTail = function(value) {
    this.stack1.push(value);
};

/**
 * @return {number}
 */
CQueue.prototype.deleteHead = function() {

    let {stack1, stack2} = this;
    if (!stack2.length){
        while(stack1.length){
            stack2.push(stack1.pop())
        };
    }
    return stack2.pop() || -1; 
};