#macro HEALTH 0
#macro SKILLPOINTS 1
#macro SPEED 2
#macro ATTACKPOWER 3
#macro DEFENSEPOWER 4
#macro ACCURACY 5

#macro IDLE 0
#macro DEF 1
#macro ATK 2
#macro MISS 3
#macro HURT 4

state = IDLE;

base[HEALTH] = 10;
base[SKILLPOINTS] = 5;
base[SPEED] = irandom_range(1, 10);
base[ATTACKPOWER] = 2;
base[DEFENSEPOWER] = 1;
base[ACCURACY] = 0.5;

current[HEALTH] = base[@ HEALTH];
current[SKILLPOINTS] = base[@ SKILLPOINTS];
current[SPEED] = base[@ SPEED];
current[ATTACKPOWER] = base[@ ATTACKPOWER];
current[DEFENSEPOWER] = base[@ DEFENSEPOWER];
current[ACCURACY] = base[@ ACCURACY];

turnFinished = false;
selected = false;
attackWillHit = false;
incomingDamage = 0;

function DamageUnit(amount) {
	var damage = amount - current[@ DEFENSEPOWER];
	if (damage < 0) {
		current[@ HEALTH] = current[@ HEALTH];
	} else {
		current[@ HEALTH] -= damage;
	}
	//current[@ HEALTH] -= max(0, damage);
}