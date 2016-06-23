-- made by { @Th3_BOOS }
do
ws = {}
rs = {}

-- some examples of how to use this :32

ws[1] = "السلام عليكم" -- msg 
rs[1] =  "وعليكم السلام ورحمة الله هلا اغاتي" -- reply

ws[2] = "بوسني" -- msg 
rs[2] =  "مووواح فدوه لربك❤️🙈" -- reply

ws[3] = "اوسكار" -- msg 
rs[3] =  "ها حياتي😻❤️" -- reply

ws[4] = "جهنم" -- msg
rs[4] = "هذا الي صنعني فديت ربه 🙈❤️" -- reply

ws[5] = "شلونكم" -- msg
rs[5] = " تمام حياتي وانت شلونك😍❤️" -- reply

ws[6] = "ضوجه" -- msg 
rs[6] = "شي اكيد الكبل ماكو 😂 لو بعدك/ج مازاحف/ة 🙊😋" --reply

ws[7] = "زاحف" -- msg 
rs[7] = "زاحف على خالتك/ج الشكره️😝😂🙌"

ws[8] = "احبك" -- msg 
rs[8] ="خخ فدوه اروحلك انا امواح🙈❤️"

ws[9] = "انجب" -- msg 
rs[9] =" صار اغاتي انجبيت😷💛️" --

ws[10] = "تحبني" -- msg 
rs[10] =" شعندي غيرك/ج يبعد رويحتي😻❤️️" --

ws[11] = "مجرمه" -- msg 
rs[11] ="هاي الضلعه فديتها"

ws[12] = "باي" -- msg 
rs[12] ="بايات حياتي انته الله وياك👋😽️"

ws[13] = "سرو" -- msg 
rs[13] =" هاي الكبد مالتي لحد يندك بيها ارجعه لبيتهم مفلش❤️😍️"

ws[14] = "هلو" -- msg 
rs[14] ="هلوات على النبي😹" 

ws[15] = "اوسكار هاذا حلو" -- msg 
rs[15] ="فديته للحلو اني اخ لو بس يخليني😉❤️️"

ws[16] = "شكد" -- msg 
rs[16] ="اكثر من ما تتصور😍😍❤️️"

ws[17] = "منتضر" -- msg 
rs[17] =" فديت ربه هاذه الضلع😹🙌️"

ws[18] = "اتفل" -- msg 
rs[18] ="ختفوووووووووو💦💦️️"

ws[19] = "شلونك" -- msg 
rs[19] ="تمام بحي وانت/ي شلونك😍😍😍️️"

ws[21] = "اوسكار شنو رئيك بهاذا" -- msg 
rs[21] ="فديت ربه هذه ورده مال الله  فدوه يروحله المدير وكل الادمنيه مووواح💋😍️️"

ws[22] = "اوسكار هاذا زين" -- msg 
rs[22] ="هذه فد واحد سرسري وزاحف وساقط و يضحك ع البنات سوالفه كلها عندي😒😒️️"

ws[23] = "تخليني" -- msg 
rs[23] ="عيب منا عالم تعال وره ال 12 كلها نايمه😉️️"

ws[24] = "رقيه" -- msg 
rs[24] = "يمه فديتها هاي رقو"

ws[25] = "غرور" -- msg 
rs[25] ="موووواح شلون بوسه عسل والله عسل افيش هاي حبيبتي 😍❤️️"

ws[26] = "شكو ماكو" -- msg 
rs[26] ="غيرك/ج بل كلب ماكو يبعد كلبي😍❤️️"

ws[27] = "حيدر"
rs[27] ="هاذه الضلع  فديته😍❤️️"

ws[28] = "حسن" -- msg 
rs[28] ="هذه ضلعي فديته مح 😍❤️️"

ws[29] = "سرو" -- msg 
rs[29] ="هاي ضلعه جهنم خط احمر😍❤️️"

ws[30] = "اوسكارغنيلي" -- msg 
rs[30] ="😍❤️️"

ws[31] = " بوسها" -- msg 
rs[31] ="مووووووواح شلون بوسه عسل والله عسل افيش😍❤️️"

ws[32] = "شنو انته" -- msg 
rs[32] ="اني بوت طيح الله حضك ههههههه️️"

ws[33] ="ميدو" -- msg
rs[33] ="هاذا ضلعي فديته من ال 56"

ws[34] ="عمر" -- msg
rs[34] ="😍❤فديته الكبد من ال56"

ws[35] ="ليان"-- msg
rs[35] ="هاي شمعت الكروب"


-- the main function
function run( msg, matches )
	-- just a local variables that i used in my algorithm  
	local i = 0; local w = false

	-- the main part that get the message that the user send and check if it equals to one of the words in the ws table :)
	-- this section loops through all the words table and assign { k } to the word index and { v } to the word itself 
	for k,v in pairs(ws) do
		-- change the message text to uppercase and the { v } value that toke form the { ws } table and than compare it in a specific pattern 
		if ( string.find(string.upper(msg.text), "^" .. string.upper(v) .. "$") ) then
			-- assign the { i } to the index of the reply and the { w } to true ( we will use it later )
			i = k; w = true;
		end
	end

	-- check if { w } is not false and { i } not equals to 0
	if ( (w ~= false) and (i ~= 0) ) then
		-- get the receiver :3 
		R = get_receiver(msg)
		-- send him the proper message from the index that { i } assigned to
		--send_large_msg ( R , rs[i] );
		--send_reply(msg.id, rs[i])
		reply_msg(msg.id, rs[i], ok_cb, false )
	end
	
	-- don't edit this section
	if ( msg.text == "about" ) then
		if ( msg.from.username == "Mouamle" ) then
			R = get_receiver(msg)
			send_large_msg ( R , "Made by @Mouamle" );
		end
	end 

end



return {
	patterns = {
		"(.*)"		
  	},
  	run = run
} 


end
