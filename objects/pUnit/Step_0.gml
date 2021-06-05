switch(state) {
	case IDLE:
		if (layer_sequence_get_headpos(unitSequence) > idleEnd) {
			layer_sequence_headpos(unitSequence, idleStart);
		}
	break;
	case ATK:
		if (layer_sequence_get_headpos(unitSequence) > atkEnd) {
			turnFinished = true;
			layer_sequence_headpos(unitSequence, idleStart);
			state = IDLE;
		}
	break;

	case DEF:
		if (layer_sequence_get_headpos(unitSequence) > defEnd) {
			layer_sequence_headpos(unitSequence, idleStart);
			state = IDLE;
		}
	break;
	
	case MISS:
		if (layer_sequence_get_headpos(unitSequence) > missEnd) {
			layer_sequence_headpos(unitSequence, idleStart);
			state = IDLE;
		}
	break;
	
	case HURT:
		if (layer_sequence_get_headpos(unitSequence) > hurtEnd) {
			DamageUnit(incomingDamage);
			layer_sequence_headpos(unitSequence, atkStart);
			state = IDLE;
		}
	break;
}