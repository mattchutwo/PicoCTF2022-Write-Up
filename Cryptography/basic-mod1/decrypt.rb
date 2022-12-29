    charset = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_"
    nums = ""
    flag ="picoCTF{"
    File.open('message.txt').each  {|line|
        nums = line}

    numlist = nums.split(" ")
    numlist.each_with_index { |num,i|
        flag += (charset[num.to_i % 37]) }
    flag += "}"
    puts(flag)
    
    
    
