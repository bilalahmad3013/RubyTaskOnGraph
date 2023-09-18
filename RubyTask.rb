def getNum(x)

    if x==0
         return "Zero"

    elsif x==1 
        return "One"
     
    elsif x==2 
        return "Two"
        
    elsif x==3 
        return "Three"
        
    elsif x==4 
        return "Four"
        
    elsif x==5 
        return "Five"
        
    elsif x==6 
        return "Six"
        
    elsif x==7 
        return "Seven"
        
    elsif x==8 
        return "Eight"
        
    elsif x==9 
        return "Nine"  
        
    end    

end
def getNumTens(x)
    if x==0
        return "Zero"
   elsif x==1 
       return "One"    
   elsif x==2 
       return "Twenty"       
   elsif x==3 
       return "Thirty"       
   elsif x==4 
       return "Forty"       
   elsif x==5 
       return "Fifty"       
   elsif x==6 
       return "Sixty"       
   elsif x==7 
       return "Seventy"       
   elsif x==8 
       return "Eighty"       
   elsif x==9 
       return "Ninetyeen"       
   end 
end
def getNumSpecial(x)
    if x=="10"
        return "Ten"
   elsif x=="11" 
       return "Eleven"    
   elsif x=="12" 
       return "Twelve"       
   elsif x=="13" 
       return "Thirteen"       
   elsif x=="14" 
       return "Forteen"       
   elsif x=="15" 
       return "Fifteen"       
   elsif x=="16" 
       return "Sixteen"       
   elsif x=="17" 
       return "Seventeen"       
   elsif x=="18" 
       return "Eighteen"       
   elsif x=="19" 
       return "Nineteen"       
   end
end
puts "Enter the number"
n=gets.chomp.to_i
s=""
t=""
temp=n
pow=1
if n==0 
    puts "Zero"    
elsif n == 1000
    puts "One Thousand"    
elsif n < 0 || n > 1000   
    puts "Invalid Input"     
else
    while temp > 0
    str=""
    last =temp%10
    t="#{last}"+ u
    if last != 0        
        if pow == 1
            str=getNum(last)
            s=str + " " + s
        elsif pow == 10
            if last == 1
             s=getNumSpecial(t)                
            else               
            str=getNumTens(last)
            s=str + " " + s 
            end
        elsif pow == 100
            str=getNum(last)
            s=str + " Hundred" + " " + s    
        end
    end
    temp=temp/10
    pow=pow*10
end
puts s
end
