*** Settings ***
Library     SeleniumLibrary
Documentation  Verification of the links and landing pages for each slide in the carousel

*** Variables ***
${BROWSER}      safari
${LOGIN URL}    https://tunein.com/?homecarouselautoscroll=false

*** Test Cases ***
Test_Carousel_Slide1_Line1_link
    Open Browser To Main Page
    Maximize Browser Window
    Title Should Be   TuneIn | Free Internet Radio | NFL, Sports, Podcasts, Music & News
    Click Element  xpath://li[@data-testid='carouselControlDot-0']
    Click Element  xpath://div[@data-testid='heroCarouselTextContainer0']//a[@data-testid='line1']
    Sleep  2
    Title Should Be  Sign Up
    Go Back

Test_Carousel_Slide1_Line2_link
    Click Element  xpath://li[@data-testid='carouselControlDot-0']
    Click Element  xpath://div[@data-testid='heroCarouselTextContainer0']//a[@data-testid='line2']
    Sleep  2
    Title Should Be  Sign Up
    Go Back
    Sleep  1

Test_Carousel_Slide1_Line3_link
    Click Element  xpath://li[@data-testid='carouselControlDot-0']
    Click Element  xpath://div[@data-testid='heroCarouselTextContainer0']//a[@data-testid='line3']
    Sleep  2
    Title Should Be  Sign Up
    Go Back
    Sleep  1

Test_Carousel_Slide1_Button
    Click Element  xpath://li[@data-testid='carouselControlDot-0']
    Click Element  xpath://a[@data-testid='carouselUpsellButton']//span
    Sleep  2
    Title Should Be  Sign Up
    Go Back
    Sleep  1

Test_Carousel_Slide1_heroImage_link
    Click Element  xpath://li[@data-testid='carouselControlDot-0']
    Click Element  xpath://a[@data-testid='homeCarouselElement-0']//div[@data-testid='heroImage']
    Sleep  2
    Title Should Be  Sign Up
    Go Back
    Sleep  1

Test_Carousel_Slide2_Line1_link
    Title Should Be   TuneIn | Free Internet Radio | NFL, Sports, Podcasts, Music & News
    Click Element  xpath://li[@data-testid='carouselControlDot-1']
    Click Element  xpath://div[@data-testid='heroCarouselTextContainer1']//a[@data-testid='line1']
    Sleep  2
    Title Should Be  Coronavirus News | Free Internet Radio | TuneIn
    Go Back
    Sleep  1

Test_Carousel_Slide2_Line2_link
    Click Element  xpath://li[@data-testid='carouselControlDot-1']
    Click Element  xpath://div[@data-testid='heroCarouselTextContainer1']//a[@data-testid='line2']
    Sleep  2
    Title Should Be  Coronavirus News | Free Internet Radio | TuneIn
    Go Back
    Sleep  1

Test_Carousel_Slide2_Line3_link
    Click Element  xpath://li[@data-testid='carouselControlDot-1']
    Click Element  xpath://div[@data-testid='heroCarouselTextContainer1']//a[@data-testid='line3']
    Sleep  2
    Title Should Be  Coronavirus News | Free Internet Radio | TuneIn
    Go Back
    Sleep  1

Test_Carousel_Slide2_heroImage_link
    Click Element  xpath://li[@data-testid='carouselControlDot-1']
    Click Element  xpath://a[@data-testid='homeCarouselElement-1']//div[@data-testid='heroImage']
    Sleep  2
    Title Should Be  Coronavirus News | Free Internet Radio | TuneIn
    Go Back
    Sleep  1

Test_Carousel_Slide2_guideItemPlayOverlay_link
    Click Element  xpath://li[@data-testid='carouselControlDot-1']
    Click Element  xpath://body//div[@data-testid='heroImageContainer']//div//div[1]//div[2]//a[1]
    Sleep  2
    Title Should Be  Coronavirus News | Free Internet Radio | TuneIn
    Go Back
    Sleep  1



Test_Carousel_Slide3_Line1_link
    Click Element  xpath://li[@data-testid='carouselControlDot-2']
    Click Element  xpath://div[@data-testid='heroCarouselTextContainer2']//a[@data-testid='line1']
    Sleep  2
    Title Should Be  90's Classic Rock | Free Internet Radio | TuneIn
    Go Back
    Sleep  1

Test_Carousel_Slide3_Line2_link
    Click Element  xpath://li[@data-testid='carouselControlDot-2']
    Click Element  xpath://div[@data-testid='heroCarouselTextContainer2']//a[@data-testid='line2']
    Sleep  2
    Title Should Be  90's Classic Rock | Free Internet Radio | TuneIn
    Go Back
    Sleep  1

Test_Carousel_Slide3_Line3_link
    Click Element  xpath://li[@data-testid='carouselControlDot-2']
    Click Element  xpath://div[@data-testid='heroCarouselTextContainer2']//a[@data-testid='line3']
    Sleep  2
    Title Should Be  90's Classic Rock | Free Internet Radio | TuneIn
    Go Back
    Sleep  1

Test_Carousel_Slide3_heroImage_link
    Click Element  xpath://li[@data-testid='carouselControlDot-2']
    Click Element  xpath://a[@data-testid='homeCarouselElement-2']//div[@data-testid='heroImage']
    Sleep  2
    Title Should Be  90's Classic Rock | Free Internet Radio | TuneIn
    Go Back
    Sleep  1

Test_Carousel_Slide4_Line1_link
    Click Element  xpath://li[@data-testid='carouselControlDot-3']
    Click Element  xpath://div[@data-testid='heroCarouselTextContainer3']//a[@data-testid='line1']
    Sleep  2
    Title Should Be  The 2020 Election | Free Internet Radio | TuneIn
    Go Back
    Sleep  1

Test_Carousel_Slide4_Line2_link
    Click Element  xpath://li[@data-testid='carouselControlDot-3']
    Click Element  xpath://div[@data-testid='heroCarouselTextContainer3']//a[@data-testid='line2']
    Sleep  2
    Title Should Be  The 2020 Election | Free Internet Radio | TuneIn
    Go Back
    Sleep  1

Test_Carousel_Slide4_Line3_link
    Click Element  xpath://li[@data-testid='carouselControlDot-3']
    Click Element  xpath://div[@data-testid='heroCarouselTextContainer3']//a[@data-testid='line3']
    Sleep  2
    Title Should Be  The 2020 Election | Free Internet Radio | TuneIn
    Go Back
    Sleep  1

Test_Carousel_Slide4_heroImage_link
    Click Element  xpath://li[@data-testid='carouselControlDot-3']
    Click Element  xpath://a[@data-testid='homeCarouselElement-3']//div[@data-testid='heroImage']
    Sleep  2
    Title Should Be  The 2020 Election | Free Internet Radio | TuneIn
    Sleep  1
    Close Browser

*** Keywords ***
Open Browser To Main Page
    Open Browser    ${LOGIN URL}    ${BROWSER}