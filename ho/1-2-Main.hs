import Lampese



-- \u000a(ghc Main.hs);./Main.exe

--m 2 = 1
--m n x = n + m n-1 0



--fac 1 = [1,0]
fac x = [x, (mod 2020 x)]
--main = print([fac x | x<-[101,202..505]])

cs 1 = 1
cs r = r * r * pi
--cs 5

hl_qjz 1 1 1 = 1
hl_qjz a b c = do
    let p = (a+b+c)/2
    sqrt(p*(p-a)*(p-b)*(p-c))
--hl_qjz 3 5 6


-- 求根号3

-- three (0, x) =  (x + 3 / x)/2
-- three (n, x) = three (n-1, (x + 3 / x)/2)

three :: Double -> Double -> Double
three 0 x =  (x + 3 / x)/2 
three n x = three (n-1) ((x+3 / x)/2)


{- 斐波那契数列
f1 0 = 1
f1 n = f1 (n-1) * (1+sqrt(5))/2
f2 0 = 1
f2 n = f2 (n-1) * (1-sqrt(5))/2
f0 n = (1/sqrt(5)) * (f1 n - f2 n)
print([f0 x | x<-[1..5]])
-}

-- 模式匹配测试
-- sex :: String -> Char -> String
-- 错误示例
-- print(sex "xboy" 'Y')
sex :: String -> Char -> Char
sex name y = y


-- 变量模式
name''_ :: (String, Char) -> String -- (String, Char)
name''_ z = fst z
-- name''_ (x,y) = fst (x,y)
-- name''_ (_,_) = (_,_) -- 人不能，至少不该
-- print(name''_ ("xboy", 'Y'))


type Life = (String,String)
mine :: Life -> Life
mine life = life
-- mine ("Lampese","ym")


inCircle :: Float -> (Float,Float) -> Bool
inCircle r (x, y) = r*r >= (x*x+y*y) 
{-
main = do
        let f = inCircle 5 
        print(
            f(3,4),
            f(4,2),
            f(5,7)
            )
-}

-- numRealRoots :: Float -> Float -> Float -> Int

离得越近 :: String -> String-> String
离得越近 x y = x++"离"++y++"越近,"++y++"离"++x++"越近"
-- "白丝","欧派"
-- main = putStrLn (离得越近 "手" "加速火把")


-- main = putStrLn( fq 4)






-- 乱码解决方案 （确信
removeNonUppercase st = [c | c <- st, c `elem` ['А'..'Я']]



-- main = print( 离得越近 "手" "xx")




{-
##################################
            2.7 习题
##################################
-}

{- 求根

solve :: Float -> Float -> Float -> ( Float, Float )
solve a b c = do
                let m = sqrt(b*b-4*a*c)
                ((-b+m)/2/a , (-b-m)/2/a)

main = print (((solve 1) 2) 1)

-}


type Fraction = (Int,Int) 
ratplus :: Fraction -> Fraction -> Fraction
ratplus (a,b) (x,y) = (a*x,b*y)

--(<->) :: Int -> Int -> Int

--(<->) x y = x+y
--(+) :: Fraction -> Fraction -> Fraction
--(+) (a,b) (x,y) = (a+x,b+y)


infix 5 <+>
infix 1 <->

infix 8 <-->



(<+>) :: Fraction ->  Fraction ->  Fraction 
(m,n) <+> (x,y) = ratplus (m,n) (x,y)
(m,n) <-> (x,y) = (m-x,n-y)

-- 求方
x <--> 0 = 1
x <--> n = x <--> (n-1) * x

-- main = print ((3,7) <+> (6,1) <-> (1,1),2<-->3)



-- 斐波那契数列
f0 :: Int -> Int
f1 :: Int -> Float
f2 :: Int -> Float
f1 0 = 1
f1 n = f1 (n-1) * (1+sqrt(5))/2
f2 0 = 1
f2 n = f2 (n-1) * (1-sqrt(5))/2
f0 n = round ((1/sqrt(5)) * (f1 n - f2 n))

-- main = print([f0 x | x<-[1..50]])
-- print([f0 x | x<-[1..5]])

