

isEmpty :: [x] -> Bool
isEmpty [] = True
isEmpty [x] = False
--main = print (isEmpty (1:[]))


mySum :: [Int] -> Int
mySum [] = 0
mySum (x:xs) = x+mySum xs

--main = print(mySum [1..100])

{-
int2str :: Int -> String
int2str 1 = ""


readDiary :: [(Int,String)] -> String

readDiary [] = ""
readDiary xs = snd(head xs)

-}


--main = putStrLn(fst (head [(1,"想灯灯"),(2,"想灯灯"),(3,"想灯灯")]))
-- bida
-- Xx + Yy = Zz

tr :: Int -> [(Int,Int,Int)]
-- tr n = [(x,x,x) | x<-[1..n]]

tr n = [(x,y,z)|x<-[1..n],y<-[1..n],z<-[1..n],x*x+y*y==z*z]
 
-- 真暴力啊


tr_ :: Int -> Int -> Int -> Int -> Int-> [(Int,Int,Int)]


-- tr_ x y 1 n = tr_ (x-1) 1 n n


tr_ x y z n l
            | y>n = tr_ (x-1) 1 x n (1+ l)
            | z>n  = tr_ (x-1) 1 x n (1+ l)
            | x==0 = [(0,0,l)]
            | a==b = (x,y,z):tr_ x y (z+1) n (1+ l) 
            | a<b  = tr_ x (y+1) z n (1+ l)
            | a>b  = tr_ x y (z+1) n (1+ l)
            where
            a = x*x+y*y
            b = z*z
            -- 我在写一种很新的东西
            -- n2
            

{-
main = do
        let t = tr 777
        print (sum  [1|_<-t])

-}

--thd :: (Int,Int,Int)->Int
thd :: (a, b, c) -> c
thd (a, b, c) = c

main = do
        let n = 3000
        --let t = tr n
        let t_=tr_ n 1 1 n 1
        --print (t,t_)
        --print (sum  [1|_<-t])
        putStrLn ("tr_计算次数"++ show( thd(last t_))++" tr暴力次数"++show n ++ "^6")
        print (sum [1|_<-t_])




