#!/bin/bash

## Receivers (BCC list)
receivers="sm4524457@gmail.com,2021wa15403@wilp.bits-pilani.ac.in,2021wa15989@wilp.bits-pilani.ac.in,2021wa15893@wilp.bits-pilani.ac.in,chhamatiwari08@gmail.com,sanyashukla7642@gmail.com"

## Random Thought list
thoughts=(
"Every sunrise is an invitation to brighten someone’s day."
"Success is the sum of small efforts, repeated day in and day out."
"Positivity always wins. Always."
"Happiness depends upon ourselves."
"Believe you can and you're halfway there."
)

# Random Word list
words=("Serenity" "Elation" "Resilience" "Gratitude" "Harmony")
meanings=(
"Serenity → The state of being calm, peaceful, and untroubled."
"Elation → Great happiness and exhilaration."
"Resilience → The capacity to recover quickly from difficulties."
"Gratitude → The quality of being thankful and showing appreciation."
"Harmony → A pleasing arrangement of parts; agreement and peace."
)

## Pick random thought & word
i=$((RANDOM % ${#thoughts[@]}))
j=$((RANDOM % ${#words[@]}))

thought="${thoughts[$i]}"
word="${words[$j]}"
meaning="${meanings[$j]}"

(
echo "Subject: 🌸 Thought & Word of the Day"
echo "From: Good Morning:Have a nice day"
echo "To: undisclosed-recipients:;"      # Hide actual addresses
echo "Bcc: $receivers"
echo
echo "🌞 Thought of the Day:"
echo "\"$thought\""
echo
echo "📘 Word of the Day:"
echo "$word → $meaning"
echo
echo "--"
echo "Mail sent by Shiva Mishra"
echo "(Please don’t reply to this email)"
) | msmtp $receivers

