class Stack
    attr_reader :items
  
    def initialize
      @items = []
    end
  
    def push(item)
      @items.push(item)
    end
  
    def pop
      @items.pop
    end
  
    def size
      @items.length
    end
  end


$s1 = Stack.new
$s1.push('F');$s1.push('C');$s1.push('P');$s1.push('G');$s1.push('Q');$s1.push('R')
$s2=  Stack.new
$s2.push('W');$s2.push('T');$s2.push('C');$s2.push('P')
$s3=  Stack.new
$s3.push('B');$s3.push('H');$s3.push('P');$s3.push('M');$s3.push('C')
$s4=  Stack.new
$s4.push('L');$s4.push('T');$s4.push('Q');$s4.push('S');$s4.push('M');$s4.push('P');$s4.push('R')
$s5=  Stack.new
$s5.push('P');$s5.push('H');$s5.push('J');$s5.push('Z');$s5.push('V');$s5.push('G');$s5.push('N')
$s6=  Stack.new
$s6.push('D');$s6.push('P');$s6.push('J')
$s7=  Stack.new
$s7.push('L');$s7.push('G');$s7.push('P');$s7.push('Z');$s7.push('F');$s7.push('J');$s7.push('T');$s7.push('R')
$s8=  Stack.new
$s8.push('N');$s8.push('L');$s8.push('H');$s8.push('C');$s8.push('F');$s8.push('P');$s8.push('T');$s8.push('J')
$s9=  Stack.new
$s9.push('G');$s9.push('V');$s9.push('Z');$s9.push('Q');$s9.push('H');$s9.push('T');$s9.push('C');$s9.push('W') 




def stack(a)
    if a=="s1"
        return $s1
    elsif a=="s2"
        return $s2
    elsif a=="s3"
        return $s3
    elsif a=="s4"
        return $s4
    elsif a=="s5"
        return $s5
    elsif a=="s6"
        return $s6
    elsif a=="s7"
        return $s7
    elsif a=="s8"
        return $s8
    else
        return $s9
    end
end




File.open("/home/ongraph/Personals/Inst.txt", "r") do |f|
   
    f.each_line do |line|
        arr= []
        arr2=[]
     line.scan(/\d+/) do |x|
        arr.push(x)      
     end
     input = 1
     while input <= arr[0].to_i
        str1="s"+arr[1]
        str2="s"+arr[2]

       
        
        t= stack(str1)
        $u= stack(str2)
        v=t.pop()
        arr2.push(v)        
        input = input + 1
     end
       while arr2.size > 0
        $u.push(arr2.pop)
       end
    end
  end

  puts $s1.pop()
  puts $s2.pop()
  puts $s3.pop()
  puts $s4.pop()
  puts $s5.pop()
  puts $s6.pop()
  puts $s7.pop()
  puts $s8.pop()
  puts $s9.pop()
