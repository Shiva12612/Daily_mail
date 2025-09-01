#!/bin/bash


read -p "enter you name : " name
echo "You have entered your $name"

if [ -n "$name" ]; then
   echo "Thanks for your $name"
else
   echo "SORRY: Please enter your Name again"
fi
(
echo "Subject: 🌸 A Beautiful Thought for You"
echo "From: sm45245@gmail.com"
echo "To:  sm4524457@gmail.com 2021wa15403@wilp.bits-pilani.ac.in 2021wa15989@wilp.bits-pilani.ac.in 2021wa15893@wilp.bits-pilani.ac.in"
echo
echo "\"Every sunrise is an invitation to brighten someone’s day.\""
echo "Wishing you peace, positivity, and endless smiles today 🌞✨"
echo
echo "--"
echo "Note: Mail sent by Shiva Mishra"
echo "(Please don’t reply to this email)"
) | msmtp sm4524457@gmail.com 2021wa15403@wilp.bits-pilani.ac.in 2021wa15989@wilp.bits-pilani.ac.in 2021wa15893@wilp.bits-pilani.ac.in


