/*
/obj/item/weapon/paper/reacengi
	name = "reactive engines guide"
	info = "<I>Смена #03-A, инженерный департамент произвел модификацию реактивных двигателей. <br>Кратка&#255; инструкци&#255; по эксплуатации: <br>1) В начале Вашей смены нажмите на все кнопочки над консолью включени&#255;/отключени&#255; подачи топлива движков. Все должны гореть зеленым. <br>2) Всю смену нажимайте на запальник слева от указанных выше кнопок. <br>3) В случае ЧП, мы <b>не виноваты</b>.</i>"
*/

/obj/item/weapon/paper/roles_nuclear
	name = "black market"
	info = "<tt><center>Доступ к черному рынку</center><hr>Использу&#255; доступные каналы поставки, Наниматель смог обеспечить вашу команду определенным бюджетом на данную операцию - выражен в телекристаллах. Выбери среди себ&#255; главного или возьмите поровну - главное, чтобы работы была выполнена настолько качественно, насколько это возможно. <b>Аплинк с кристаллами у беретоносца.</b><br><center>Задачи</center><hr>По приоритету:<br>1) <b>Захватить ценный персонал.</b> Приоритет - учёные, главы, инженеры, все остальные. За каждого пленного - надбавка к начальной награде в размере 1200 каждому живому оперативнику. <br>2) <b>Украсть важные документы.</b> Нам достоверно известно о чертежах корабл&#255; и документах в офисе АВД. За каждые по 7000. <br>3) <b>Перезаписать все сделанные исследовани&#255; на съемные носители.</b> Стоимость исследований будет оценена позже. <br>4) <b>Записать ИИ на интеллекарту (если он есть).</b> Стоимость будет оценена позже. <br>5) <b>Уничтожить объект.</b> Нам достоверно известно о наличии на объекте системы самоуничтожени&#255;. Используйте её дл&#255; уничтожени&#255; объекта после выполнени&#255; всех достижимых целей. <hr>Аванпост под наблюдением. Удачи.</tt>"

/obj/item/weapon/paper/liners_example_armor
	name = "armor"
	info = "Формат таков - armor и количестов брони. Например, armor 20 имеет броню у всего в 20."

/obj/item/weapon/paper/liners_example_guns
	name = "guns "
	info = "У всего урон 20 для удобного подсчета. Резина - 0 АП. Револьвер - 10 АП. Пистолет - 20 АП. Магнум - 40 АП."

/obj/effect/landmark/corpse/guns_test_one
	name = "Armor 10"
	corpse_outfits = list(/decl/hierarchy/outfit/guns_test_one)

/obj/effect/landmark/corpse/guns_test_two
	name = "Armor 20"
	corpse_outfits = list(/decl/hierarchy/outfit/guns_test_two)

/obj/effect/landmark/corpse/guns_test_three
	name = "Armor 30"
	corpse_outfits = list(/decl/hierarchy/outfit/guns_test_three)

/obj/effect/landmark/corpse/guns_test_four
	name = "Armor 40"
	corpse_outfits = list(/decl/hierarchy/outfit/guns_test_four)

/decl/hierarchy/outfit/guns_test_one
	name = OUTFIT_JOB_NAME("Armor 10")
	suit = /obj/item/clothing/suit/armor/vest/old/one

/decl/hierarchy/outfit/guns_test_two
	name = OUTFIT_JOB_NAME("Armor 20")
	suit = /obj/item/clothing/suit/armor/vest/old/two

/decl/hierarchy/outfit/guns_test_three
	name = OUTFIT_JOB_NAME("Armor 30")
	suit = /obj/item/clothing/suit/armor/vest/old/three

/decl/hierarchy/outfit/guns_test_four
	name = OUTFIT_JOB_NAME("Armor 40")
	suit = /obj/item/clothing/suit/armor/vest/old/four

/obj/item/clothing/suit/armor/vest/old/one //just realized these had never been removed
	name = "armor 10"
	armor = list(melee = 10, bullet = 10, laser = 10, energy = 10, bomb = 10, bio = 0, rad = 0)

/obj/item/clothing/suit/armor/vest/old/two //just realized these had never been removed
	name = "armor 20"
	armor = list(melee = 20, bullet = 20, laser = 20, energy = 20, bomb = 20, bio = 0, rad = 0)

/obj/item/clothing/suit/armor/vest/old/three //just realized these had never been removed
	name = "armor 30"
	armor = list(melee = 30, bullet = 30, laser = 30, energy = 30, bomb = 30, bio = 0, rad = 0)

/obj/item/clothing/suit/armor/vest/old/four //just realized these had never been removed
	name = "armor 40"
	armor = list(melee = 40, bullet = 40, laser = 40, energy = 40, bomb = 40, bio = 0, rad = 0)
