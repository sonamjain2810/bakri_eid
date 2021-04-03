import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:flutter/material.dart';
import 'utils/SizeConfig.dart';
import 'ShayariDetailPage.dart';

class ShayariList extends StatefulWidget {
  @override
  _ShayariListState createState() => _ShayariListState();
}

class _ShayariListState extends State<ShayariList> {
  static final facebookAppEvents = FacebookAppEvents();
  var data = [
    "कुछ मसर्रत मजीद हो जाए\nइस बहाने से ईद हो जाए\nईद मिलने आप जो आए\nमेरी भी ईद, ईद हो जाए!",
    "साल में एक बार आती है ईद,\nखुशियां हजार लाती है ईद\nमोमिन के लिए तोहफा है ईद\nबच्चों के लिए ईदी है ईद!",
    "Kuch Musarrat Mazeed ho jaye, Is bahanese Eid ho jaye, Eid milne jo Aapaajayein, Meri bhi Eid, Eid ho jaye.",
    "Ramzan may na milsakey, Bakri Eid may nazrein he milaa Loo. Haath milaney se kya hoga? Seedha galey he lagaa Lo! Bakri Eid Mubarak!",
    "Socha Kisi Apne Se Baat KarunApne Kisi Khaas Ko Yaad KarunKiya Jo Faisla Eid Mubarak Kehne KaDil Ne Kaha Kyun Na Aapseshuruwat Karun*EID MUBARAK*",
    "ऐ चांद उनको मेरा ये पैगाम देना\nखुशी का दिन और हंसी की शाम कहना\nजब देखें वो तुझे तो,\nमेरी तरफ से उनको ईद मुबारक कहना",
    "सदा हंसते रहो जैसे हंसते हैं फूल, दुनिया के सारे गम तुम्हें जाए भूल, चारों तरफ फैलाओ खुशियों के गीत, ऐसी उम्मीद के साथ तुम्हें मुबारक हो ईद",
    "समुद्र को उसका किनारा मुबारक\nचांद को सितारा मुबारक\nफूलों को उसकी खुशबू मुबारक\nदिल को उसका दिलदार मुबारक\nआपको और आपके परिवार\nको ईद का त्योहार मुबारक",
    "Chupke se chand ki roshni choo jaye aapko\nDheere se yeh hawa kuch kah jaye apko\nDil se jo chahate ho maang lo khuda se\nHum dua karte hain mil jaye woh apko.",
    "Khushiyo se bhari\nPhoolo se dhaki\nKhusbboyo me basi\nRango me saji\nSitaroon me chupi\nSapno me dhali\nAur shabnam se dhuli\nEid Ki Chand Mubarak",
    "Aaj se amiri garibi ke faasle na rahein. Har insaan ek dooje ko apna bhai kahe. Aaj sab kuch bhool ke aa gale lag ja.",
    "Zindagi ka har pal khushiyon se kam na ho, ap ka har din Eid se kam na ho,\nYehi dua hain ki aisa Eid ka din aapko hamesha naseeb ho.\nEid- Mubarak!",
    "जिंदगी का हर पल खुशियों से कम न हो,\nआप का हर दिन ईद के दिन से कम न हो,\nऐसा ईद का दिन आपको हमेशा नसीब हो,\nजिसमे कोई दुःख और गम न हो\nआपको और आपके परिवार को ईद मुबारक…",
    "ये दुआ मांगते हैं हम ईद के दिन, बाकी ना रहे आपका कोई गम ईद के दिन, आपके आंगन में उतरे रोज खुशियों भरा चांद, और महकता रहे फूलों का चमन ईद के दिन",
    "aoge jab ghar humare deep jalaa lenge. Miloge jab humse Eid mana lenge, na dosti ki koi maszid hai na mandir, jahaan maango dua tum hum wahin sir jhuka lenge.",
    "Eid Ka Din Hai Or Hum Tum Se Door Bethe HainSitaro Tum Q Khamosh Ho Hum To Majboor Bethe Hain",
    "अल्लाह की रहमत छाई है\nखुशियां कितनी लाई है\nकयामत ने बात दोहराई है\nदेखो फिर से ईद है!",
    "ईद का दिन है गले आज तो मिल ले ज़ालिम\nरस्में दुनिया भी है, मौका भी है, दस्तूर भी है…",
    "कभी न मिल सके, ईद में नज़रें ही मिला लो…\nहाथ मिलाने से क्या होगा, सीधे गले ही लगा लो!",
    " Kitni Eidain Guzar Gai Tum Bin,Ab Khuda Kay Liye Na Tarpana,Dekho Phir Eid Anay Wali Hai, Eid Kay Sath Tum Bhi Ajana",
    "कोई इस चाँद से तो पूछे उसका मजहब क्या है ।\nकल ईद पे हंस रहा था आज तीज पे मुस्करा रहा है ।।",
    "Eid aaye Tum na aaye kya Maza hai Eid ka\nEid hi toa Naam hai Ek Dusre ki Deed ka\nApna to kisi tarah katt jayega ye Din\nTum jis se milo aaj uss ko Eid Mubarak.",
    "Hasrat hai aapka deedar kare\nAap aao to hum bhi eid kare\nEID MUBARAK .",
    "Koi itna Chahye Tumhey to Batana,\nKoi Tumharey itney Naaz uthaaye to Batana,\nEID MUBARAK to har koi Keh day ga Tumsay,\nKoi Hamari tarah Kahey to Batana.",
    "Eid ka din hay aaj to galay mil lay zaalim,\nRasm-e-duhniya bhi hay, moqa bhi hay, dastoor bhi hay!",
    "अर्ज़ किया है ….ज़रा गौर फर्मायिगा।\nउनको देखूं तो टूटे मेरा रोजा।\nउनको देखूं तो टूटे मेरा रोज़ा।\nचाँद को देखे बिना भी ईद होती है कभी।",
    " Eid leke aata hai dher saari khushiyan, Eid mita deta hai insaan me dooriyan, Eid hi khuda ka ek nayam tabarok, Isiliye kehte hai sab Eid Mubarak!",
    "Allah ki rehmat chaayi hai, Khushiyan kitni laayi hai, Qayamat ne baat dohrayi hai, Dekho phirse eid aayi hai. Eid Mubarak!",
    "Badal Se Badal Milte Hai\nTo Barish Hoti Hai..\nDost Se Dost Milte Hai To Eid Hoti Hai.\nEid Mubarak Frnd.",
    "ईद आई तुम न आए\nक्या मज़ा है ईद का,\nईद ही तो नाम है\nइक दूसरे की दीद का!",
    "देखा ईद का चाँद तो\nमांगी ये दुआ रब से,\nदेदे तेरा साथ ईद का तोहफा समझ कर।\nईद मुबारक।",
    "ईद का त्यौहार आया है\nखुशियां अपने संग लाया है\nखुदा ने दुनिया को महकाया है.\nदेखो फिर से ईद का त्यौहार आया है\nआप सभी को दिल से ईद मुबारक.",
    "बाकी दिनों का हिसाब रहने दो,\nये बताएं ईद पर मिलने आओगे ना.",
    "Eid Pe Kon Sa Tohfaa Doon Tum Ko..!\nDil Jo Agr Doon Sambhaal To Loge Naaa..!!?",
    "Eid ka chaand tumne dekh liya…\nChaand ki eid ho gayi..",
    "Mandir ki sidhiyon par baitha chand ko dhoondh raha tha…\nmujhe apne doston ko Eid ki badhaai jo deni thi….",
    "Saal Mein 1 Baar Aati Hai Eid, Khushiyan Hazar Lati Hai Eid, Momin Ke Liye Tohfa Hai Eid, Bachchoo Ke Liye Eidi Hai Eid, Allah Ki Ata Or Inam Hai Eid, Hr Aik Ko Mubrk Ho Ye Pyari Si Eid.",
    "Zindegi ka her pal khushiyon se kam na ho, aap ka her din eid ke din se kam na ho, aisa eid ka din apko hamesha naseeb ho! Eid Mubarak!",
    "Suhani dhoop barsat k baad, Thori si hasi her baat k baad, Usi tarah ho mubarak aap ko, Yeh EID Ramadan k baad. EID Mubarak",
    "सदा हस्ते रहो जैसे हस्ते है फूल,\nदुनिया की सारे गम तुमे जाये भूल,\nचारो तरफ फेलाओ खुशिओं के गीत,\nऐसी उम्मीद के साथ यार तुम्हे\n|| मुबारक हो ईद ||",
    "तमन्ना आपकी सभी पूरी हो जाएं, हो आपका मुक्कदर इतना रोशन कि, आमीन कहने से पहले ही आपकी हर दुआ मंजूर हो जाए\nआपको दिल से ईद मुबारक!",
    "Chand se roshan ho Ramzan tumhara,\nEbadat se bhara jaye Rozah tumhara,\nHar Namaz aur har Dua ho kubol tumhari,\nYehi hai Allah se duwah humari.",
    "Eid leke aata hai dher saari khushiyan, Eid mita deta hai insaan me dooriyan, Eid hi khuda ka ek nayam tabarok, Isiliye kehte hai sab Eid Mubarak!",
    "Socha Kisi Apne Se Baat Karun, Apne Kisi Khaas Ko Yaad Karun, Kiya Jo Faisla Eid Mubarak Kehne Ka, Dil Ne Kaha Kyun Na Aapse shuruwat Karun. EID MUBARAK",
    "Dosto Chupkay say chand ki Roshni Choo Jaye Apko, Dheeray Say Ya Hawa Kuch Keh Jaye Apko, Dil Say jo Chahtay Ho Maang Lo Khuda Say, Hum Dua Kartay Hain Mil Jaye Wo Apko! EID MUBARAK."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shayari List",
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
      ),
      body: SafeArea(
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Padding(
                      padding:
                          EdgeInsets.all(1.93 * SizeConfig.widthMultiplier),
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryVariant,
                                ),
                                borderRadius:
                                    // 40 / 8.96 = 4.46
                                    BorderRadius.all(Radius.circular(
                                        4.46 * SizeConfig.widthMultiplier))),
                            child: ListTile(
                              leading: Icon(
                                Icons.brightness_1,
                                color: Theme.of(context).primaryIconTheme.color,
                              ),
                              title: Text(
                                data[index],
                                maxLines: 2,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              trailing: Icon(Icons.arrow_forward_ios,
                                  color:
                                      Theme.of(context).primaryIconTheme.color),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) =>
                                  ShayariDetailPage(data[index], index)));

                      facebookAppEvents.logEvent(
                        name: "Shayari List",
                        parameters: {
                          'clicked_on_shayari_index': '$index',
                        },
                      );
                    },
                  );
                },
                itemCount: data.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
