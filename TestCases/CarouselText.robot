*** Settings ***
Library     SeleniumLibrary
Documentation  Verification of the text lines for each slide for the carousel

*** Variables ***
${BROWSER}      safari
${LOGIN URL}    https://tunein.com/?homecarouselautoscroll=false

*** Test Cases ***
Test_Carousel_Slide1_Text
    Open Browser To Main Page
    Maximize Browser Window
    Title Should Be   TuneIn | Free Internet Radio | NFL, Sports, Podcasts, Music & News
    Click Element  xpath://li[@data-testid='carouselControlDot-0']
    Element Text Should Be  xpath://div[@data-testid='heroCarouselTextContainer0']//a[@data-testid='line1']  MORE JAZZ.
    Element Text Should Be  xpath://div[@data-testid='heroCarouselTextContainer0']//a[@data-testid='line2']  LESS ADS.
    Element Text Should Be  xpath://div[@data-testid='heroCarouselTextContainer0']//a[@data-testid='line3']  GO PREMIUM.

Test_Carousel_Slide2_Text
    Click Element  xpath://li[@data-testid='carouselControlDot-1']
    Element Text Should Be  xpath://div[@data-testid='heroCarouselTextContainer1']//a[@data-testid='line1']  STAY INFORMED
    Element Text Should Be  xpath://div[@data-testid='heroCarouselTextContainer1']//a[@data-testid='line2']  ON CORONAVIRUS.
    Element Text Should Be  xpath://div[@data-testid='heroCarouselTextContainer1']//a[@data-testid='line3']  HEAR THE LATEST.

Test_Carousel_Slide3_Text
    Click Element  xpath://li[@data-testid='carouselControlDot-2']
    Element Text Should Be  xpath://div[@data-testid='heroCarouselTextContainer2']//a[@data-testid='line1']  NINETIES NOSTALGIA
    Element Text Should Be  xpath://div[@data-testid='heroCarouselTextContainer2']//a[@data-testid='line2']  HAS A NEW HOME.
    Element Text Should Be  xpath://div[@data-testid='heroCarouselTextContainer2']//a[@data-testid='line3']  LET'S ROCK.

Test_Carousel_Slide4_Text
    Click Element  xpath://li[@data-testid='carouselControlDot-3']
    Element Text Should Be  xpath://div[@data-testid='heroCarouselTextContainer3']//a[@data-testid='line1']  YOUR SOURCE FOR
    Element Text Should Be  xpath://div[@data-testid='heroCarouselTextContainer3']//a[@data-testid='line2']  ELECTION COVERAGE.
    Element Text Should Be  xpath://div[@data-testid='heroCarouselTextContainer3']//a[@data-testid='line3']  LIVE & ON-DEMAND.

    Close Browser

*** Keywords ***
Open Browser To Main Page
    Open Browser    ${LOGIN URL}    ${BROWSER}