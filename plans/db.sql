USER
	id
	username
	password

WINE
	id
	name
	vineyard
	country
	varietal_id
	description

VARIETAL
	id
	name
	isBlend
	type

STORE
	id
	name
	location

WINE_STORE
	id
	wine_id
	store_id
	price

REVIEW
	id
	user_id
	wine_id
	year			null
	rating
	description
	date

IMAGE
	id
	wine_id