The ABRO program is the classical example of a "Hello World" of the synchronous world.
It illustrates concurrency, hierachy, and preemtion (abort).

The execution of this SCChart is as follows.
1. The system enters initial state ABthenO as well as WaitAB. When entering ABthenO the entry action sets the output O to false. WaitAB consists of two regions (threads) HandleA and HandleB. Transitioning into a superstate does not trigger transitions nested within that state unless those transitions are immediate. The initial states wA and wB of both concurrent regions are also entered. 
2. HandleA stays in its initial state wA, until the Boolean input A becomes true. Then it transitions to the final state dA. Similary, HandleB stays in its initial state WB, until the Boolean input B becomes true. Then it transitions to the final state dB.
3. When both threads eventually are in their final states DA and DB, immediately the termination transition from WaitAB to Done is taken which is setting the output O to true.
4. The behavior can be reset by setting the input R to true. Then the self-loop transition from and to ABthenO is triggered causing a strong preemption and a re-entering of that state. This causes the entry action to reset the output O to false. The strong preemption means that the output O will not be true in case R is true in the same tick when the termination transition from WaitAB to Done is taken.

For a more detailed insight in the SCCharts ABRO model see [Compiling SCCharts — A Case-Study on Interactive Model-Based Compilation](https://rtsys.informatik.uni-kiel.de/~biblio/downloads/papers/isola14.pdf) by Christian Motika, Steven Smyth, and Reinhard von Hanxleden.
In Proceedings of the 6th International Symposium on Leveraging Applications of Formal Methods, Verification and Validation (ISoLA 2014), volume 8802 of LNCS, page 461–480, Corfu, Greece, October 2014. 


We here have two variants, one that uses the classical synchronous signals, and the other one with the same behavior but variables with sequentially constructive semantics.
