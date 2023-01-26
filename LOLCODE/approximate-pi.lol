HAI 1.4

OBTW
ATTENTION! This implementation may is buggy and can potentially run into endless loops so be careful when using it.

The most enthusiatic implementation of a pi approximation I've done so far and may be the worst as well.
This is mainly because I had to implement functionality like prng and sqrt() myself both of them are the simplest implementation I've could find.
Otherwise the documentation of that eso language is very poor and the setup up was a bit hacky.

USAGE:
Download the LOLCODE interpreter called lci from here https://github.com/justinmeza/lci
Follow the setup for your OS
Interpret this file by "lci approximate-pi.lol" and provide the needed input

TLDR

HOW IZ I random YR seed
    I HAS A a ITZ PRODUKT OF seed AN 15485863 
    I HAS A b ITZ MOD OF PRODUKT OF a AN PRODUKT OF a AN a AN 2038074743
    b IS NOW A NUMBAR
    I HAS A x ITZ QUOSHUNT OF b AN MAEK 2038074743 A NUMBAR
    FOUND YR BIGGR OF x AN PRODUKT OF x AN -1
IF U SAY SO

HOW IZ I sqrt YR n
    I HAS A lo ITZ SMALLR OF 1 AN n
    I HAS A hi ITZ BIGGR OF 1 AN n
    I HAS A mid
    n IS NOW A NUMBAR
    lo IS NOW A NUMBAR
    hi IS NOW A NUMBAR
    mid IS NOW A NUMBAR

    IM IN YR loLoop UPPIN YR loI TIL DIFFRINT BIGGR OF PRODUKT OF 100.0 AN PRODUKT OF lo AN lo AN n AN n
        lo R PRODUKT OF lo AN 10.0
    IM OUTTA YR loLoop

    BTW VISIBLE "before loop hi"
    IM IN YR hiLoop UPPIN YR hiI TIL DIFFRINT SMALLR OF PRODUKT OF 0.1 AN PRODUKT OF hi AN hi AN n AN n
        hi R PRODUKT OF hi AN 0.1
    IM OUTTA YR hiLoop

    IM IN YR midLoop UPPIN YR midI TIL BOTH SAEM midI AN 1000
        mid R QUOSHUNT OF SUM OF lo AN hi AN 2
        I HAS A prodMid ITZ PRODUKT OF mid AN mid

        BOTH SAEM prodMid AN n, O RLY?
            YA RLY
                FOUND YR mid
        OIC
            
        DIFFRINT n AN BIGGR OF prodMid AN n, O RLY?
            YA RLY
                hi R mid
            NO WAI
                lo R mid
        OIC
    IM OUTTA YR midLoop

  FOUND YR mid
IF U SAY SO

VISIBLE "Enter the a seed: "
I HAS A seed
GIMMEH seed
seed IS NOW A NUMBR

VISIBLE "Enter the number of iterations: "
I HAS A iterations
GIMMEH iterations
iterations IS NOW A NUMBR

I HAS A radius ITZ 1.0
I HAS A inCircle ITZ 0

I HAS A limit ITZ SUM OF seed AN PRODUKT OF iterations AN 2

IM IN YR iterateLoop UPPIN YR seed TIL DIFFRINT BIGGR OF limit AN seed AN limit

    BTW get random points between 0 and 1
    I HAS A x ITZ I IZ random YR seed MKAY
    seed R SUM OF seed AN 1
    I HAS A y ITZ I IZ random YR seed MKAY

    BTW distance = sqrt(x*x + y*y)
    I HAS A quadraticSum ITZ SUM OF PRODUKT OF x AN x AN PRODUKT OF y AN y 
    I HAS A distance ITZ I IZ sqrt YR quadraticSum MKAY

    BTW Check if point is in circle by calculating the distance
    DIFFRINT radius AN SMALLR OF distance AN radius, O RLY?
        YA RLY
            inCircle R SUM OF inCircle AN 1
    OIC    
IM OUTTA YR iterateLoop

BTW Pi approximation
I HAS A pi ITZ PRODUKT OF 4.0 AN QUOSHUNT OF MAEK inCircle A NUMBAR AN MAEK iterations A NUMBAR
VISIBLE "Pi approximation: "!
VISIBLE pi

KTHXBYE