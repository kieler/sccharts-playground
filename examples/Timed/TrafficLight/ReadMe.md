This is the TrafficLight controller implemented in Timed SCCharts.

The traffic light has three lights green, yellow, and red to control the car traffic and a button for a pedestrian to request secure rossing of the street, which should cause the traffic light to switch temporarily to a red light to stop the traffic. The automaton of the controller has a real-valued clock x, an input pedestrian indicating whether a pedestrian requests crossing the street, and three outputs sigR, sigG, sigY. The outputs do not directly indicate the light states, but rather constitute events that indicate color changes. It is assumed that initially the red light is turned on; emitting the event sigG switches off red and switches on green, and so on.


Published in: Time in SCCharts by A. Schulz-Rosengarten, R. von Hanxleden, F. Mallet, R. de Simone, Julien Deantoni. In Languages, Design Methods, and Tools for Electronic System Design: Selected Contributions from FDL 2018, page 1–25. Springer, 2020. [Pubisher Link](https://link.springer.com/chapter/10.1007/978-3-030-31585-6_1)
