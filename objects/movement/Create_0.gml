/// @description Insert description here
// You can write your code in this editor

location = loc.bedroom; //current location

accessable = []; //table of avaliable locations stored as binary data
#region bitwise movement code
//above may seem like magic numbers but it's actually bitwise flags to manage which buttons to make appear
accessable[loc.nowhere] = 2;				//1
accessable[loc.bedroom] = 544;				//2
accessable[loc.kat_room] = 544;				//4
accessable[loc.julie_room] = 544;			//8
accessable[loc.guest_room] = 32;			//16
accessable[loc.lounge_room] = 990;			//32
accessable[loc.kitchen] = 1184;				//64
accessable[loc.bathroom] = 544;				//128
accessable[loc.front_yard] = 44544;			//256
accessable[loc.back_yard] = 800;			//512
accessable[loc.car_spot] = 784;				//1024
accessable[loc.barry_house_out] = 4352;		//2048
accessable[loc.barry_house_in] = 256;		//4096
accessable[loc.debug_house_out] = 16640;	//8192
accessable[loc.debug_house_in] = 256;		//16384

#endregion

update_room_list = false;

dx = x ; //delta x position used to slide objects off and on screen
