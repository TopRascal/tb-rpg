#macro HEALTH 0
#macro SKILLPOINTS 1
#macro SPEED 2

#macro IDLE 0
#macro DEF 1
#macro ATK 2
#macro MISS 3
#macro HURT 4

state = IDLE;

base[HEALTH] = 10;
base[SKILLPOINTS] = 5;
base[SPEED] = irandom_range(1, 10);

current[HEALTH] = base[@ HEALTH];
current[SKILLPOINTS] = base[@ SKILLPOINTS];
current[SPEED] = base[@ SPEED];

turnFinished = false;
selected = false;