# Elevator
The task is to program a controller for a two store elevator.

## Interface
The interface is already defined in ´elevator.environment.sctx´.

~~~
scchart ElevatorInterface {
  input bool buttonUp, buttonDown, buttonAlarm
  input bool isUp, isDown, second
  output bool moveUp, moveDown, alarmLamp
}
~~~

Note that the SCChart in the template [inherits](https://github.com/kieler/semantics/wiki/Syntax:-Object-Orientation#inheritance) the interface and you must not declare any of these variable.

You can use them as if they were declared in your SCChart directly.\
**Inputs:**\
- *bool buttonUp:* true if the up button is pressed
- *bool buttonDown:* true if the down button is pressed
- *bool buttonAlarm:* true if the alarm button is pressed
- *bool isUp:* true if the elevator is in the second floor
- *bool isDown:* true if the elevator is in the first floor
- *bool second:* true once every second
**Outputs:**\
- *bool moveUp:* sets the move direction of the elevator to up
- *bool moveDown:* sets the move direction of the elevator to down
- *bool alarmLamp:* sets the alarm lamp on or off

## Expected Behavior
The behavior is fairly simple, when the input *buttonUp* (*buttonDown*) occurs, the elevator moves up (down) until *isUp*(*isDown*) is present.
When *buttonAlarm* is present, the elevator stops for 5 seconds and flashes the alarm lamp (toggle with an appropriate frequency), before it continues to move.
Make sure that *moveUp* and *moveDown* are never true at the same time.