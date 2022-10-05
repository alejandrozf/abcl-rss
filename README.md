# abcl-rss
### _Alejandro Zamora <ale2014.zamora@gmail.com>_

This is an alternative to cl-feedparser or cl-rss from Quicklisp which are not working with ABCL-1.9

Quickstart

Clone this repository to your Quicklisp local-projects (or other discoverable) folder

```
CL-USER> (require :abcl-contrib)
NIL
CL-USER> (require :abcl-asdf)
("ABCL-ASDF")
CL-USER> (asdf:load-system :quicklisp-abcl)
T
CL-USER> (ql:quickload :abcl-rss)
To load "abcl-rss":
  Load 1 ASDF system:
    abcl-rss
; Loading "abcl-rss"
[package abcl-rss]
(:ABCL-RSS)
CL-USER> (abcl-rss:read-feed "https://feeds.simplecast.com/54nAGcIl")
#<com.rometools.rome.feed.synd.SyndFeedImpl SyndFeedImpl.copyright=© 2020-20.... {2DC83A24}>
CL-USER> (abcl-rss:feed-get-entries *)
#(#("<p>A few weeks into this year’s monsoon season in Pakistan, it became clear that the rains were unlike anything the country had experienced in a long time.</p><p>The resulting once-in-a-generation flood has marooned entire villages and killed 1,500 people, leaving a trail of destruction, starvation and disease.</p><p>Guest: <a href=\"https://www.nytimes.com/by/christina-goldbaum?smid=pc-thedaily\">Christina Goldbaum</a>, an Afghanistan and Pakistan correspondent for The New York Times.</p><p>Background reading: </p><ul><li>The flooding<a href=\"https://www.nytimes.com/2022/09/11/world/asia/pakistan-floods-food-crisis.html\"> has crippled Pakistan’s agricultural sector</a>, threatening a food crisis and dealing another critical blow to a country already in the economic doldrums.</li><li>Farm laborers are scrambling to salvage whatever they can from the battered remains of their cotton and rice harvests.<a href=\"https://www.nytimes.com/2022/10/01/world/asia/pakistan-flood-farmers.html\"> It is desperate work.</a></li><li>More than 33 million people have been displaced, with vast areas of Pakistan<a href=\"https://www.nytimes.com/2022/09/14/world/asia/pakistan-floods.html\"> likely to take months to dry out</a>.</li></ul><p>For more information on today’s episode, visit <a href=\"http://nytimes.com/thedaily?smid=pc-thedaily\">nytimes.com/thedaily</a>. Transcripts of each episode will be made available by the next workday. </p>
")
  #("<p>The last Supreme Court term was a blockbuster. The justices made a number of landmark rulings, including in Dobbs v. Jackson Women’s Health Organization, which ended 50 years of the constitutional right to abortion in the United States.</p><p>The new term could be just as testing, with a series of deeply divisive cases on the docket.</p><p>Guest: <a href=\"https://www.nytimes.com/by/adam-liptak?smid=pc-thedaily\">Adam Liptak</a>, a correspondent covering the United States Supreme Court for The New York Times.</p><p>Background reading: </p><ul><li>The six-justice<a href=\"https://www.nytimes.com/2022/10/02/us/conservative-supreme-court-legitimacy.html\"> conservative supermajority seems poised to dominate</a> the Supreme Court’s new term as it did the earlier one.</li></ul><p>For more information on today’s episode, visit <a href=\"http://nytimes.com/thedaily?smid=pc-thedaily\">nytimes.com/thedaily</a>. Transcripts of each episode will be made available by the next workday. </p>
")
  #("<p>Latino voters have never seemed more electorally important than in the coming midterm elections: the first real referendum on the Biden era of government.</p><p>Latinos make up 20 percent of registered voters in two crucial Senate races — Arizona and Nevada — and as much or more in over a dozen competitive House races.</p><p>In the past 10 years, the conventional wisdom about Latino voters has been uprooted. We explore a poll, conducted by The Times, to better understand how they view the parties vying for their vote.</p><p>Guest: <a href=\"https://www.nytimes.com/by/jennifer-medina?smid=pc-thedaily\">Jennifer Medina</a>, a national politics reporter for The New York Times.</p><p>Background reading: </p><ul><li>Two years after former President Donald Trump made surprising gains with Hispanic voters, Republican dreams of a major realignment have failed to materialize, <a href=\"https://www.nytimes.com/2022/09/18/us/politics/latino-vote-polling.html?smid=pc-thedaily\">according to a New York Times/Siena College poll</a>. </li></ul><p>For more information on today’s episode, visit <a href=\"http://nytimes.com/thedaily?smid=pc-thedaily\">nytimes.com/thedaily</a>. Transcripts of each episode will be made available by the next workday. </p>
")
  #("<p>In September 2021, a group of female minority students at Arizona State University confronted two white male students who were studying in the library’s multicultural center.</p><p>The women were upset with what they saw as blatant antagonism: One of the men sported a “Didn’t Vote for Biden” shirt, the other had a “Police Lives Matter” laptop sticker. The women felt they had chosen the multicultural center in order to rile them. A heated row between both parties erupted, a video of which quickly went viral, threatening to upend the lives of all involved.</p><p>For The New York Times, Sarah Viren, a journalist and essayist, explored the incident in the context of “the widening gyre of the culture wars.” The row at Arizona State was, she explained, “a symbolic fight,” one that raised questions of “wokeism” and “free speech,” the perils of viral videos, and the purpose of “safe spaces.”</p><p>“It was a brief drama that was also a metaphor,” Ms. Viren wrote. “But watching and rewatching that drama unfold from my computer, I kept asking myself: a metaphor for what?”</p><p><i><strong>This story</strong> <strong>was written by Sarah Viren and recorded by Audm</strong>. To hear more audio stories from publications like The New York Times,</i><a href=\"https://www.audm.com/?utm_source=nytmag&utm_medium=embed&utm_campaign=age_old_question_jabr\" target=\"_blank\"><i> download Audm for iPhone or Android</i></a><i>.</i></p>
")
  #("<p>Why we can’t understand this moment in politics without first understanding the transformation of American evangelicalism.</p><p>“<a href=\"https://www.nytimes.com/column/election-run-up-podcast\">The Run-Up</a>” is a new politics podcast from The New York Times. Leading up to the 2022 midterms, we’ll be sharing the latest episode here every Saturday. If you want to hear episodes when they first drop on Thursdays, follow “The Run-Up” wherever you get your podcasts, including on <a href=\"https://podcasts.apple.com/us/podcast/the-run-up/id1142083165\">Apple</a>, <a href=\"https://open.spotify.com/show/6mWcEpRBJ3hCMtcBQiKYVv?si=de2f346204224cad&nd=1\">Spotify</a>, <a href=\"https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5zaW1wbGVjYXN0LmNvbS9LY3RuMVJEQg?sa=X&ved=0CAIQ9sEGahgKEwjIsOW9pID6AhUAAAAAHQAAAAAQogE\">Google</a>, <a href=\"https://www.stitcher.com/show/the-run-up\">Stitcher</a> and <a href=\"https://music.amazon.com/podcasts/d00566e5-d738-4166-9794-9102adb15da8/the-run-up?ref=dm_sh_fwYnU6MJQiH18TSxZvauWZ9Gx\">Amazon Music</a>.</p>
")
  #("<p>As the sun came up over Florida yesterday, a fuller picture began to emerge of the destruction that Hurricane Ian had inflicted on the state and its residents.</p><p>The Category 4 storm washed away roads, bridges, cars, boats and homes. The damage is so extensive that, according to the state’s governor, Ron DeSantis, it may take years to rebuild.</p><p>Guests: <a href=\"https://www.nytimes.com/by/patricia-mazzei\">Patricia Mazzei</a>, the Miami bureau chief for The New York Times;<a href=\"https://www.nytimes.com/by/richard-fausset\"> Richard Fausset</a>, a Times correspondent based in Atlanta;<a href=\"https://www.nytimes.com/by/nicholas-bogel-burroughs\"> Nicholas Bogel-Burroughs</a>, a national news reporter for The Times; and<a href=\"https://www.hilaryswift.com/about\"> Hilary Swift</a>, a photojournalist.</p><p>Background reading: </p><ul><li><a href=\"https://www.nytimes.com/interactive/2022/09/29/climate/hurricane-ian-florida-intensity.html\">Data from NASA</a> reveals how warm ocean waters in the Gulf of Mexico provided the fuel that turned Hurricane Ian into such a potent force.</li><li>The scale of the wreckage was staggering, even to Florida residents who had survived and<a href=\"https://www.nytimes.com/2022/09/29/us/hurricane-ian-florida-damage.html\"> rebuilt after other powerful hurricanes</a>.</li></ul><p>For more information on today’s episode, visit nytimes.com/thedaily. Transcripts of each episode will be made available by the next workday. </p>
")
  ...)
#<java.util.ArrayList [SyndEntryImpl.comments=null
Syn.... {1F845909}>
CL-USER>
```

## License

MIT
