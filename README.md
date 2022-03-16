# Exact-Pulley-Center-to-Center-Distance-Calculator
EXACT Center to Center Distance Calculator for Pulleys

I needed to find the EXACT Center to Center distance for some timing pulleys
for a project I was working on. I expected to machine my bearing positions
the EXACT distance apart, install a timing belt on my two timing pulleys and
have everything perfectly tight without any adjustment or tensioners needed.
I have done this in the past succsessfully, but it involved a lot of playing
with a CAD program, moving the pulleys, drawing the belt tangent to them both,
checking the length,  etc.. it was tedious,  so this time I figured the length
should be able to be calcualted, however after trying every on-line center to
center calculator that I could find, then drawing the results on my CAD program,
I found out that they were all quite simply WRONG!!

After more digging, I finally cam across this website:
https://www.york-ind.com/engineering/center-distance-belt-length/

it states the formula for belt length given the center distance is exact, however
the reverse formula for center distance given the belt length is only an APPROXIMATION
and to be used as a starting point, you then use the exact belt length program to see
what the actual belt length would be, make an adjustment to the center distance, 
try it again, rinse and repeat until you get the belt length you want.

Well that sounded tedious, so I wrote this program to do that for me.
It's a quick FreePascal console program, with the parapmeters just set with constants.
I don't know if I will bother making it a user friendly program because this suits my
needs just fine.  I thought I would share it because it solves an annoying problem.


Here is some sample output:

        Large Teeth = 112
        
        Small Teeth = 18
        
Large Circumference = 560

Small Circumference = 90

     Large Diameter = 178.253536262922776
     
     Small Diameter = 28.647889756541160
     
Desired Belt Length = 740

 0  Adjustment = 0.000000000000000  Center Distance = 193.004306992301200  New Belt Length = 740.380451398498170
 
 1  Adjustment = 0.500000000000000  Center Distance = 192.004306992301200  New Belt Length = 738.537620397487670
 
 2  Adjustment = 0.250000000000000  Center Distance = 192.504306992301200  New Belt Length = 739.458823083015200
 
 3  Adjustment = 0.125000000000000  Center Distance = 192.754306992301200  New Belt Length = 739.919584256276380
 
 4  Adjustment = 0.062500000000000  Center Distance = 192.879306992301200  New Belt Length = 740.150004608541280
 
 5  Adjustment = 0.031250000000000  Center Distance = 192.816806992301200  New Belt Length = 740.034791124293970
 
 6  Adjustment = 0.015625000000000  Center Distance = 192.785556992301200  New Belt Length = 739.977186862830540
 
 7  Adjustment = 0.007812500000000  Center Distance = 192.801181992301200  New Belt Length = 740.005988786751910
 
 8  Adjustment = 0.003906250000000  Center Distance = 192.793369492301200  New Belt Length = 739.991587773081960
 
 9  Adjustment = 0.001953125000000  Center Distance = 192.797275742301200  New Belt Length = 739.998788266990460
 
10  Adjustment = 0.000976562500000  Center Distance = 192.799228867301200  New Belt Length = 740.002388523639640

11  Adjustment = 0.000488281250000  Center Distance = 192.798252304801200  New Belt Length = 740.000588394507080

12  Adjustment = 0.000244140625000  Center Distance = 192.797764023551200  New Belt Length = 739.999688330546750

13  Adjustment = 0.000122070312500  Center Distance = 192.798008164176200  New Belt Length = 740.000138362476490

14  Adjustment = 0.000061035156250  Center Distance = 192.797886093863700  New Belt Length = 739.999913346499060

15  Adjustment = 0.000030517578125  Center Distance = 192.797947129019950  New Belt Length = 740.000025854484530

16  Adjustment = 0.000015258789063  Center Distance = 192.797916611441820  New Belt Length = 739.999969600491000

17  Adjustment = 0.000007629394531  Center Distance = 192.797931870230880  New Belt Length = 739.999997727487650

18  Adjustment = 0.000003814697266  Center Distance = 192.797939499625410  New Belt Length = 740.000011790986040

19  Adjustment = 0.000001907348633  Center Distance = 192.797935684928150  New Belt Length = 740.000004759236840

20  Adjustment = 0.000000953674316  Center Distance = 192.797933777579520  New Belt Length = 740.000001243362250

21  Adjustment = 0.000000476837158  Center Distance = 192.797932823905200  New Belt Length = 739.999999485424950

22  Adjustment = 0.000000238418579  Center Distance = 192.797933300742360  New Belt Length = 740.000000364393600

23  Adjustment = 0.000000119209290  Center Distance = 192.797933062323780  New Belt Length = 739.999999924909280

24  Adjustment = 0.000000059604645  Center Distance = 192.797933181533070  New Belt Length = 740.000000144651380

25  Adjustment = 0.000000029802322  Center Distance = 192.797933121928420  New Belt Length = 740.000000034780330

26  Adjustment = 0.000000014901161  Center Distance = 192.797933092126100  New Belt Length = 739.999999979844800

27  Adjustment = 0.000000007450581  Center Distance = 192.797933107027260  New Belt Length = 740.000000007312560

28  Adjustment = 0.000000003725290  Center Distance = 192.797933099576680  New Belt Length = 739.999999993578630

29  Adjustment = 0.000000001862645  Center Distance = 192.797933103301970  New Belt Length = 740.000000000445540

30  Adjustment = 0.000000000931323  Center Distance = 192.797933101439330  New Belt Length = 739.999999997012080

31  Adjustment = 0.000000000465661  Center Distance = 192.797933102370650  New Belt Length = 739.999999998728870

32  Adjustment = 0.000000000232831  Center Distance = 192.797933102836310  New Belt Length = 739.999999999587200

33  Adjustment = 0.000000000116415  Center Distance = 192.797933103069140  New Belt Length = 740.000000000016370

34  Adjustment = 0.000000000058208  Center Distance = 192.797933102952730  New Belt Length = 739.999999999801840

35  Adjustment = 0.000000000029104  Center Distance = 192.797933103010930  New Belt Length = 739.999999999909160

36  Adjustment = 0.000000000014552  Center Distance = 192.797933103040040  New Belt Length = 739.999999999962710

37  Adjustment = 0.000000000007276  Center Distance = 192.797933103054590  New Belt Length = 739.999999999989540

38  Adjustment = 0.000000000003638  Center Distance = 192.797933103061870  New Belt Length = 740.000000000002960

39  Adjustment = 0.000000000001819  Center Distance = 192.797933103058230  New Belt Length = 739.999999999996250

40  Adjustment = 0.000000000000909  Center Distance = 192.797933103060050  New Belt Length = 739.999999999999660

41  Adjustment = 0.000000000000455  Center Distance = 192.797933103060960  New Belt Length = 740.000000000001360

42  Adjustment = 0.000000000000227  Center Distance = 192.797933103060500  New Belt Length = 740.000000000000450

43  Adjustment = 0.000000000000114  Center Distance = 192.797933103060270  New Belt Length = 740.000000000000110

44  Adjustment = 0.000000000000057  Center Distance = 192.797933103060160  New Belt Length = 739.999999999999890

45  Adjustment = 0.000000000000028  Center Distance = 192.797933103060220  New Belt Length = 740.000000000000000


