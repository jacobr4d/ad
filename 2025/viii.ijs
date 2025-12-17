ma =: ".@> > (',' splitstring ])&.> LF splitstring 1!:1 <'viii.txt'
points =: i. # ma
group =: points
dis =: {{ %: +/ *: x - y }}"1
edges =: (/: dis/"_1@:({&ma)) ~. (#~ ~:/"1) /:~"1 ,/ ,"0"_1 _~ points
LoopWithInitial =: 2 : 'u&.>/\.&.(,&(<v))&.|.&.(<"_1)'
*/ 3{. \:~ #/.~ {: {{ (<./ x{y) (I. y e. x{y)} y }} LoopWithInitial group 999{. edges
NB. part i 105952
{. */ ma{~ edges{~ (0 $~ #ma)i.~ {{ (<./ x{y) (I. y e. x{y)} y }} LoopWithInitial group edges
NB. part ii 975931446
