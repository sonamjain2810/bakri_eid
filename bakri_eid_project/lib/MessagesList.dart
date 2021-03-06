import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:flutter/material.dart';

import 'utils/SizeConfig.dart';
import 'MessageDetailPage.dart';

class MessagesList extends StatefulWidget {
  @override
  _MessagesListState createState() => _MessagesListState();
}

class _MessagesListState extends State<MessagesList> {
  static final facebookAppEvents = FacebookAppEvents();
  var data = [
    "May ALLAH give you the pleasure and happiness of heaven today and always. Barka Eid Mubarak to all!",
    "Eid-ul-Adha is the day of sacrifice, bliss, rejoice, and commitment to Allah swt’s orders. Happy Eid Al- Adha!",
    "Wishing you and your loved ones Eid Mubarak in advance! May the Almighty bless us during this Ramadan season and lead us to a prosperity.",
    "Eid Mubarak in advance! Wishing for you to spend this holy occasion surrounded by love and happiness only! Have a joyous Eid day!",
    "Advance Eid Mubarak to all my lovely friends and family members. May Allah grant us wisdom, peace, and prosperity in our lives.",
    "On the auspicious occasion of Eid-al-Adha, I am sending across my love and heartfelt wishes. Happy Eid-ul-Adha!",
    "Don’t forget me while eating kababs with yummy chutney 😉 Eid greetings!",
    "May God’s blessings be always with you. Eid Mubarak!",
    "May you celebrate this eid with your loved ones and may this day bring a lot of happiness in your life.",
    "I always hug my loved ones with my prayers as my arms can’t reach people close to my heart. Eid Mubarak!",
    "Embrace with an open heart and forget all the differences. Eid Mubarak!",
    "On the canvas of life, people like you fill the colors. Happy Eid-ul-Adha!",
    "Your warm wishes made my day. I wish you too to have a blessed eid day.",
    "Offer your sacrifices in the true spirit of bakra eid. May this eid bring peace, prosperity, and love in your life.",
    "Before my mobile battery goes down, Eid Mubarak!",
    "You are unique; you are special. May your Eid also become special and unique.",
    "Repent on your sins, Ask for forgiveness from the ALMIGHTY on this Eid-al-Adha. Eid Mubarak!",
    "To All the meat lovers! Bakra Eid is coming again 😉",
    "The holy month of Ramadhan is about to end. It is my hope that we shall all put into practice the invaluable gems of wisdom we have acquired in the month of Ramadhan. Advance Eid Mubarak to you all.",
    "Advance Eid Mubarak to all my friends and family. Have a lovely Eid filled with laughter, good food and shared moments of joy.",
    "Allah aapko khudai ki sari neymatein de, Allah apko khushiyan aur atah karein, dua hamari hai aapke saath, Bakra Eid pe aap aur sabaab haasil karein!",
    "The moon has been sighted\nThe samoosas are ready\nHere comes EID so just go steady\nLots of dua\"s is all i request\nand just wanted to wish you all the BEST!!!\n\"Eid Mubarak\"\nAddThis Sharing Buttons\nShare to Facebook\nFacebook\nShare to Twitter\nTwitter\nShare to Print\nPrint\nShare to Email\nEmail\nShare to More\nAddThis",
    "Your prayers and sacrifices will never go unanswered. On this Eid ul Adha, embrace Allah’s divine blessings will all that you have. Eid Mubarak!",
    "May you continue to grow wiser and more charming every day! May this Eid bring happiness in your heart and to your family. Eid ul Adha Mubarak!",
    "May Allah’s immense blessings be with you through your life in this world and in the afterlife. Eid Mubarak!",
    "May Allah accept all of our sacrifices and shower us with his blessings. Enjoy your Eid and convey my regards to your family! Eid Mubarak.",
    "Mubarak mauka Allah ne atah farmaya, ek baar fir bandagi ki rah pe chalaya. Adaa karna apna farz tum khuda ki liye.. Khushi se bhari ho eid ul adha apke liye!",
    "Hawa Ko Khusbo MUBARAK, Fiza Ko Mausam MUBARAK, Dilon Ko Pyar MUBARAK, Apko Humari Taraf Se Eid Mubarak!",
    "May ALLAH swt accept your good acts and forgive your transgressions. Eid Mubarak!",
    "Phoolon ki tarah haste raho Bhanwaron ki tarah gungunao Allah ka ho naam labon par Jamkar ye Eid manao! Eid Mubarak.",
    "May Allah open the doors of happiness and prosperity for you. Eid Mubarak to you and your family. Enjoy a blessed time during this Eid.",
    "I wish you and your family a very joyful Eid. May Allah accept all your prayers and forgive all your faults. Eid Mubarak!",
    "Eid Mubarak to you and your family! May this Eid Ul Adha brings nothing but joy and peace for all. Have a safe and happy Eid day!",
    "Before we ask for happiness and prosperity, we should ask for mercy. May Allah shower his mercy on us. Eid Mubarak!",
    "Eid Mubarak! May Allah fulfill your all dreams and hopes.",
    "May the joy of Eid al adha be with you for the rest of your life. May all your desires be fulfilled by the grace of Allah. Happy Eid!",
    "I pray to Allah that he answers all your prayer and give you the strength to fulfill your dreams. May this EID bring joy in your heart! Happy Eid UL Adha!",
    "May the magic of this holy festival bring unlimited happiness in your life and decorate it with the colors of heaven! Eid Mubarak!",
    "Wishing you a very happy Eid Mubarak. Cherish every moment of this beautiful festival and know that all your dreams will come true soon. Eid Mubarak!",
    "Wishing you and your family a blessed Eid ul Adha, may this Eid be filled with thinking about what’s good for others. Eid Mubarak.",
    "On this occasion of Eid Ul Adha, may Allah (SWT) accept your sacrifice and bless you throughout the year. Eid Mubarak!",
    "May your sacrifice get answered, and Allah (SWT) bless you with his uncountable blessings! Eid Ul Adha Mubarak!",
    "All the very best wishes for you and your family, May Allah grant you a harmonious and prosperous life! A very warm Eid Ul Adha Mubarak.",
    "Eid Ul Adha is a time for repenting for the past sins and looking forward to the better future days. May Allah (SWT) sanctify you! Eid Mubarak.",
    "Take a break from living in stress and this is Eid so let’s celebrate! You are welcome to join us. Life is so endlessly delicious. Happy Eid Day!",
    "Start living now and stop worrying about tomorrow. Life is too short to spend in tension. Just enjoy every moment of every day. Thinking of you on this Eid Day.",
    "You are the reason why my life is so colorful each day. Let me make this Eid such a colorful one for you! Eid Mubarak my love!",
    "May Allah forgive all your sins and accept your sacrifice and put an ease to all your suffering! Eid Ul Adha Mubarak.",
    "Eid is a day to cheer and to laugh with all your heart. It’s a day to be grateful to Allah for all of his heavenly blessings on us. Wishing you a happy Eid.",
    "On this holy festive, wishing you a day filled with lots of laughter and happy moments. Eid Mubarak from my family to yours!",
    "Happy Eid Mubarak! Wishing everyone happy holidays, stay safe and pray to your Almighty.",
    "May every drop of your sacrifice’s blood get accepted by Allah (SWT) who is the most merciful and all-forgiving! Eid Mubarak.",
    "May Allah place the mercy upon all the Muslims all around the world on this happy occasion of Eid! Eid Mubarak to everyone celebrating!",
    "May the blessings of Allah be with you and your family forever and always. Eid Mubarak!",
    "Lo Eid ka chaand aaya Dher saari khushiyan laaya Har taraf hain raunkon ke mele Har chehra bhi hai muskuraaya.",
    "You offer sacrifices; I wish that ALLAH almighty shower his blessings upon you and your family. Eid Mubarak!",
    "Delicious menu of BBQ makes bakra eid yummy. Meat Mubarak, Bakrid Eid Mubarak!!",
    "“I Wish you a Peaceful and happy Eid-ul-Adha :)”.",
    "May this Eid brings you joys unlimited, may all your wishes come true on this holy day and may you and your family be blessed by the grace of Allah. Eid Mubarak!",
    "Let this special occasion of Eid adorn your life with the colors of heaven. I wish a wonderful Eid day for you and your family.",
    "May this Eid be the beginning of another successful year in your life. Eid Mubarak to you and your lovely family!",
    "Enjoy like a child and be thankful to Allah for he has bestowed all the Muslims with such a beautiful day. Eid Mubarak to you!",
    "May this beautiful occasion of eid gives you all the reasons to make your life even more beautiful. Wishing you a happy Eid day! Eid Mubarak!",
    "Let this Eid be the occasion of sharing the love and caring for the people who need to be loved and cared. Eid Mubarak to all!",
    "Spending Eid with friends and family with lots of delicious food is a pure blessing; consider yourself lucky if you have them in your life! Eid Mubarak.",
    "As long as you keep faith in Allah, no evil can touch your heart and no sorrow can ruin your day. May your life be filled with joy and happiness on this Eid!",
    "This blessed day is for saying thank you to the almighty for all he has given to us. May he grant all your prayers and fulfill all your desires. Eid Mubarak!",
    "Accept the blessings of Allah with all your heart and forget the sorrows that burden your soul. Enjoy the moments you share with your family. Happy Eid Day!",
    "All the happy things that life can bring on your way are wished for you on Barkra Eid.",
    "May ALLAH swt bless you, and may you have a joyous Eid celebration. Eid-AL-Adha Mubarak!",
    "Aaj Ke Din Kya Ghata Chhayi Hai, Charo Aur Khusiyo Ki Fija Chhayi Hai, Keh Raha Hai Har Koe Ye Baat, Ho Khusiyo Bhara Ye Tera Din Raat. Eid Mubarak!",
    "Sada haste raho jaise haste hai phul, Duniya ki sare gam tmeh jaye bhul, Charo taraf khushiyo ka geet, Eisi umid ka sath Yaar tumhe… MUBARAK ho Eid!",
    "May ALLAH accept your prayers and your sacrifices. Happy Eid-ul-Adha!",
    "In every shared smile, in every silent prayer answered and in every golden opportunity that comes your way. May ALLAH bless you! Eid Mubarak",
    "May ALLAH fill your entire life with happiness on this Bakra Eid.",
    "Aaj se Amiri Garibi ka fasle na rahe,\nHar Insan ek duje ko aapna bhai kahe,\nAj sab kuch bhool ka aa gale lag ja,\nMubarak ho tuje yeh EID ka tyohar.\nAddThis Sharing Buttons\nShare to Facebook\nFacebook\nShare to Twitter\nTwitter\nShare to Print\nPrint\nShare to Email\nEmail\nShare to More\nAddThis",
    "Aaj Khuda ki hum par ho Meharbani,\nKarde maaf hum logo ki sare Naformani,\nEid Ka din aj aao milke kare yahi wada,\nKhuda ka hi raaho mein hum chalange sada.\nSabko EID MUBARAK\nAddThis Sharing Buttons\nShare to Facebook\nFacebook\nShare to Twitter\nTwitter\nShare to Print\nPrint\nShare to Email\nEmail\nShare to More\nAddThis2",
    "My dearest friends, you are the light of my heart. On this joyous occasion of Eid, let us take a solemn oath to become a better version of ourselves.",
    "Your kindness and integrity make me so surprised. You, my friend, are a rare piece of gem. I am lucky to have you as my best friend. Eid Mubarak to you!",
    "Good food, good friends, and good laughs. I’m happy no matter what happens or what changes along the way. Happy Eid Day!",
    "Every eid is more enjoyable with friends like you. I love you all and wish the most special Eid Mubarak to all of you!",
    "Let this holy occasion of eid be a remarkable milestone for our friendship. Wishing you and your family a memorable Eid this year! Eid Mubarak.",
    "The joys of Eid are incomplete without a friend like you to be with. You are the reason why my Eids are so special. Eid Mubarak dear friend!",
    "Let’s celebrate this holy occasion with the pleasure of spending one more amazing year of friendship. Wishing you an amazing Eid day!",
    "On this special occasion let’s make a promise that no matter what happens, we will remain best friends of each other for the rest of our life. Eid Mubarak.",
    "I believe that Almighty Allah put us in this jolly world to be happy and enjoy our life. So he created some joys occasion and this Eid is such a special one. Have a very special Eid celebration!",
    "Let’s celebrate this joys Eid occasion wearing the new dress, eating sweets and lots of delicious food. Best wishes for a great Eid day!",
    "As the holy day is approaching, I feel like I can’t wait for more to be reunited with you guys. Love you from the deep of my heart. Eid Mubarak to you all!",
    "The real meaning of eid is joy and happiness. So smile and spread happiness in the lives of the people around you. Eid Mubarak.",
    "Eid is the day to celebrate together, eat together and enjoy together.",
    "Eid-al-Adha is the day of sacrifice and commitment to ALLAH’s orders. May ALLAH (The only creator) bless all of us with happiness, success, joy, and health. Eid Mubarak to all!",
    "May the blessings of ALLAH swt be with you today and always. Eid Mubarak to all the lovely Muslims around the world!",
    "Accept my gift of Eid Mubarak wrapped with love and tied with care. Eid Mubarak!",
    "Eid day is meant to celebrate things that make you happy. May this eid become the most special day of your life. Eid Mubarak.",
    "May, the auspicious day of Eid-al-Adha bring happiness to your heart and home. Eid Mubarak to all the Muslims brothers and sisters!",
    "May ALLAH forgive us, accept our prayers, bless us with peace, and shower us with love. Happy Eid-ul-Adha!",
    "Share your joys with others to multiply your happiness. Eid-al-Adha Mubarak!",
    "I wish you all a very happy eid with your loved ones.",
    "May ALLAH accept our prayers and forgive our sins. Happy Bakra Eid!",
    "Make this Bakra eid even more special by celebrating with those who were upset with you. Eid Mubarak to all the Muslim Ummah!",
    "Be the soul that people crave your vibes. Eid Mubarak!",
    "Though we are not together on Eid day, but I want you to know that my heart is always with you to share all the happiness and joy. Bakra Eid Mubarak!",
    "This eid makes your loved ones smile. Happy Eid-al-Adha!",
    "Eid Mubarak to all! May you have a blessed and a beautiful day.",
    "Dear mom and dad, I feel so lucky to have parents like you to spend the day with. You have been the reason why every Eid day seems like a day I spend in heaven. Eid Mubarak to you!",
    "Eid is the perfect occasion for us to rejoice in happiness together and tighten the bond of our family. Eid Mubarak to all of you!",
    "Eid Mubarak! May this Holy day guide us all towards the way of light and remove the darkness of our hearts. Have a happy Eid day!",
    "Wave goodbye to another amazing year and be ready to welcome the crescent moon, beautiful new dresses and of course all the delicious food. Eid Mubarak to my loving family! I love you all!",
    "I’m sending the moon tonight to say Eid Mubarak to my lovely family. Hope it can make it to you before I reach home. Advanced Eid Mubarak from me!",
    "Even if I’m not with you in this eid day, I want you to know that my heart is always with you to share all the joys and pleasure. Enjoy this Eid to the fullest. Love you all!",
    "I am thankful to Allah because he blesses me with two wonderful days in a year to be with the people I love and care about most in my life!",
    "Don’t forget that every day you are alive is a special occasion. Your every second, every minute, every hour even every breath is a gift from Allah. Give Him thanks on this Eid day for everything!",
    "Thank you for adding so many colors into my life. You make me feel alive and special all the time. May Allah protect you and guides you towards success and happiness. Eid Mubarak dear.",
    "Your love makes my every day so special. And when it comes to Eid, my pleasure doubles as I have you to spend the day with and share the joys together.",
    "Sada haste raho jaise haste hain phool,\nDuniya ki sare gham tumeh jaye bhool,\nCharo taraf phalao khushion ka geet,\nEisi ummid ka sath Yaar tumhe...MUBARAK ho EID\nAddThis Sharing Buttons\nShare to Facebook\nFacebook\nShare to Twitter\nTwitter\nShare to Print\nPrint\nShare to Email\nEmail\nShare to More\nAddThis3",
    "When the sun has set, and day is done-\nI\"ll break this chain, but only one.\nBy the end of Ramadan, this whole chain will be all gone!\nIt\"s time for Eid and lots of fun!!!\nAddThis Sharing Buttons\nShare to Facebook\nFacebook\nShare to Twitter\nTwitter\nShare to Print\nPrint\nShare to Email\nEmail\nShare to More\nAddThis",
    "May ALLAH open all the doors of success for you today and always. Happy Eid-al-Adha!",
    "It is more than just a simple eid wish for it’s come with loving thoughts because it is meant for you.",
    "Feel the magic of Eid around you and know that the grace of God is always with you. You’ll always be surrounded by love and care. Happy Eid UL Adha!",
    "May your faith and devotion to Islam be rewarded on this auspicious day with the divine blessings from Allah. Eid Mubarak to you and your family!",
    "Eid Mubarak! Seize the moment and be happy. Because very little is needed to make a happy life, it’s all within yourself and your way of thinking.",
    "Eid ul adha is eid of sacrifice,\nand commitment to Allahs orders,\nMay Allah bless us with the same in all circles of life,\nand help all amongst us,\nwho r helpless,worried,\nand waiting for his rehmat,\nAmeen. Eid Mubarak.\nAddThis Sharing Buttons\nShare to Facebook\nFacebook\nShare to Twitter\nTwitter\nShare to Print\nPrint\nShare to Email\nEmail\nShare to More\nAddThis2",
    "No shadows to depress u,\nOnly joys to surround u,\nGod himself to bless u,\nthese r my wishes for u,\nToday, tomorrow, and every day.\nEid Mubarik.\nAddThis Sharing Buttons\nShare to Facebook\nFacebook\nShare to Twitter\nTwitter\nShare to Print\nPrint\nShare to Email\nEmail\nShare to More\nAddThis",
    "May the magic of dis EID bring lots of happiness in ur life\n& may u celebrate it wid all ur close friends & may it fill ur\nHEART wid wonders. EID MUBARAK\nAddThis Sharing Buttons\nShare to Facebook\nFacebook\nShare to Twitter\nTwitter\nShare to Print\nPrint\nShare to Email\nEmail\nShare to More\nAddThis2",
    "Hoping sincerely that this eid brings happy hours and loads of pleasure in your life. Bakra Eid Mubarak!",
    "Your wishes made my Bakra eid even more joyous. Thank you and Eid Mubarak!",
    "Eid Mubarak to you! I cannot wait to go around the neighborhood and fill my tummies with delicious dishes tomorrow! Hope you have a fun day as well!",
    "Eid Mubarak to you and your family! Eat to your heart’s content, flaunt your new dresses and have an enjoyable time with your loved ones!",
    "Eid Mubarak, my friend. I pray that after eating some delicious delicacies on Eid, you’ll regain some common sense. Love you!",
    "After an entire month of hard work, you seem to have finally lost a bit of weight. But since Eid is here, you’ll be regaining it back again. Eid Mubarak to you, dearest foodie!",
    "You may have already started missing the voice of Bakra… Happy Eid-al-Adha.",
    "Hope Love and Laugher, warmth, wishes, joy and a bouquet of\nEid wishes, jubilations, become a part of your Eid and Your Life.\nEid Mubarak.\nAddThis Sharing Buttons\nShare to Facebook\nFacebook\nShare to Twitter\nTwitter\nShare to Print\nPrint\nShare to Email\nEmail\nShare to More\nAddThis1",
    "May the magic of dis EID bring lots of happiness in ur life &\nmay u celebrate it wid all ur close friendzzzzzz & may it fill\nur HEART wid...\nAddThis Sharing Buttons\nShare to Facebook\nFacebook\nShare to Twitter\nTwitter\nShare to Print\nPrint\nShare to Email\nEmail\nShare to More\nAddThis1",
    "EID MUBARAK ho Aapko,\nDher sari tarif aur khusiya mile aapko,\nBut, Jab EIDI mile aapko to Please....\nAap Yaad karna Sirf Humko!!!\nAddThis Sharing Buttons\nShare to Facebook\nFacebook\nShare to Twitter\nTwitter\nShare to Print\nPrint\nShare to Email\nEmail\nShare to More\nAddThis1",
    "Sada haste raho jaise haste hain phool,\nDuniya ki sare gham tumeh jaye bhool,\nCharo taraf phalao khushion ka geet,\nEisi ummid ka sath Yaar tumhe...MUBARIK ho EID.\nAddThis Sharing Buttons\nShare to Facebook\nFacebook\nShare to Twitter\nTwitter\nShare to Print\nPrint\nShare to Email\nEmail\nShare to More\nAddThis",
    "Eid Mubarak! May ALLAH swt shower his countless blessings on you and your family.",
    "Look outside; the sun is smiling, birds are singing, trees and dancing, and everything is pleasant. Eid Mubarak!",
    "May the sadness forget you, may the angels protect you. May you live in peace forever. Eid-ul-Adha Mubarak.",
    "I hope love, warmth, and wishes become a part of your eid. Eid Mubarak!",
    "Bakra Eid Mubarak! All my special wishes to a very special person on a very special day.",
    "Eid is a special occasion, and may this eid bring peace, love, and prosperity in your life. Happy Eid-ul-Adha!",
    "May the blessings of ALLAH bring you joy, hope, and peace on eid day and forever. Eid-al-Adha Mubarak!",
    "The magic of eid is coming again to spread laughter, joys, and happiness. Eid Mubarak to all!",
    "Be ready with meat to greet me on this Eid-ul-Adha 😉",
    "My wish for you on this Eid-ul-Adha, my joy and happiness embrace your life, and stay on this day and always, Eid-ul-Adha Mubarak!",
    "The Holy occasion of eid celebrates Hajj and may every step of your journey be filled with true happiness, success, and prosperity.",
    "Everyone used social media these days. So, you are a social media freak then here are the best Eid-ul-Adha Mubarak statuses for you that you can upload or send to your loved ones to wish them a very happy eid.",
    "Bakra Eid Mubarak! May on this eid, the plate of your life is filled with chatni of happiness, kabas of joy, and the salad of love.",
    "Accept my cordial wishes for the auspicious occasion of Eid-ul-Adha. May this day become the best day of your life. Eid Mubarak!",
    "May ALLAH ease the sufferings of all the people around the globe. Happy Eid!",
    "May ALLAH bless you with an abundance of new friends who fill your heart with happiness. Eid Mubarak!",
    "On this Eid-ul-Adha no shadows to depress you. Only joys to surround you.",
    "Today is a wonderful day to make everyone happy. Eid-ul-Adha Mubarak!",
    "May this eid bring endless blessings of God (the only creator).",
    "Eid always brings a lot of happiness and memories along. I pray that you make more beautiful memories of this Eid-ul-Adha. Eid Mubarak.",
    "May the treasure of present become the golden memories of tomorrow. I wish you a very happy eid.",
    "Here comes the day when you can have delicious kababs with your loved ones. Happy Bakra Eid!"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Messages List",
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
      ),
      body: SafeArea(
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) =>
                                  MessageDetailPage(data[index], index)));

                      facebookAppEvents.logEvent(
                        name: "Message List",
                        parameters: {
                          'clicked_on_message_index': '$index',
                        },
                      );
                    },
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
                                    // 40 /8.98 = 4.46
                                    BorderRadius.all(Radius.circular(
                                        4.46 * SizeConfig.widthMultiplier))),
                            child: ListTile(
                              leading: Icon(Icons.brightness_1,
                                  color:
                                      Theme.of(context).primaryIconTheme.color),
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
