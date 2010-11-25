
import Test.Framework (defaultMain, testGroup, Test)
import Test.Framework.Providers.HUnit
import Test.HUnit hiding (Test)


import Language.JavaScript.Parser.Parser

main :: IO ()
main = defaultMain [testSuite]

testSuite :: Test
testSuite = testGroup "Parser"
    [ 
      testCase "helloWorld"       caseHelloWorld  
    ]

--srcHelloWorld = "Hello"
srcHelloWorld = ","
caseHelloWorld =  
  "Right (JSIdentifier \",\")"
  @=? (show $ parseStmt srcHelloWorld "src")
  

-- EOF