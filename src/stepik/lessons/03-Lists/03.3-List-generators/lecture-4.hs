xs = [1..20]

a = [x^2 | x <- xs]
-- [1,4,9,16,25,36,49,64,81,100,121,144,169,196,225,256,289,324,361,400]

b = [x^2 | x <- xs, x^2 < 200]
-- [1,4,9,16,25,36,49,64,81,100,121,144,169,196]

c = [(x,y) | x <- [1,2], y <- [1,2]]
-- [(1,1),(1,2),(2,1),(2,2)]

d = [(x,y,z) | x<-xs,y<-xs,z<-xs, x^2 + y^2 == z^2, x<= y]
-- [(3,4,5),(5,12,13),(6,8,10),(8,15,17),(9,12,15),(12,16,20)]
