/client/proc/blind(mob/M as mob in oview())
	set category = "Spells"
	set name = "Blind"
	if(usr.stat >= 2)
		usr << "Not when you're dead!"
		return
	if(!istype(usr:wear_suit, /obj/item/weapon/clothing/suit/wizrobe))
		usr << "I don't feel strong enough to use this spell"
		return
	if(!istype(usr:shoes, /obj/item/weapon/clothing/shoes/sandal))
		usr << "I don't feel strong enough to use this spell"
		return
	if(!istype(usr:head, 	/obj/item/weapon/clothing/head/wizhat))
		usr << "I don't feel strong enough to use this spell"
		return
	usr.verbs -= /client/proc/blind
	spawn(200)
		usr.verbs += /client/proc/blind
	usr.say("STI CALLIYE")
	M << text("\blue Your eyes cry out in pain!")
	M.eye_blind = 75
	return
