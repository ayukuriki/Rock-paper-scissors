your_choice = nil
vs_choice = nil
loopflag1 = true
loopflag2 = true
big_loopflag = true
choices = [0, 1, 2]
choices2 = [0, 1, 2, 3]
winflag1= false
sameflag= false


while big_loopflag 
    puts "じゃんけん..."

  while loopflag1

        puts "0(グー)1(チョキ)2(パー)3(戦わない)"
        your_number = gets.to_i

        vs_number = choices.sample

        # puts your_number
        # puts vs_number

        case your_number
        when 0
            your_choice = "グー"
        when 1
            your_choice = "チョキ"
        when 2
            your_choice = "パー"
        when 3
            your_choice =nil
            puts "じゃんけんを終了します"
        else
            your_choice =nil
            puts "どのパターンに当てはまりません"
        end


        case vs_number
        when 0
            vs_choice = "グー"
        when 1
            vs_choice = "チョキ"
        when 2
            vs_choice = "パー"
        end

        if your_choice == nil 
            loopflag1 = false
            big_loopflag = false
            break
         else
            puts "ホイ！"
            puts "_______________"
            puts "あなた:#{your_choice}を出しました"
            puts "相手:#{vs_choice}を出しました"
            puts "_______________"
            
            if your_number == vs_number
                puts "あいこで..."
                loopflag1 = true
            else
                loopflag1 = false
            end

            if your_number == 0 && vs_number == 1 ||
                your_number == 1 && vs_number == 2 ||
                your_number == 2 && vs_number == 0
                
                winflag1 = true
                # puts "winflagはtrueです"

              else
                winflag1 = false
                # puts "winflagはfalseです"
            end

        end
            
    end 
    
    
    
    if loopflag1 == false && your_choice != nil


        puts "あっち向いて〜"
        puts "0(上)1(下)2(左)3(右)"
        
        your_number = gets.to_i
        vs_number = choices2.sample
        
        case your_number
        when 0
            your_choice = "上"
        when 1
            your_choice = "下"
        when 2
            your_choice = "左"
        when 3
            your_choice = "右"
        else   
            puts "数字にも当てはまりません"
            your_choice = nil

        end
        
        case vs_number
        when 0
            vs_choice = "上"
        when 1
            vs_choice = "下"
        when 2
            vs_choice = "左"
        when 3
            vs_choice = "右"
        end

        if your_choice == nil 
            big_loopflag = false
            break
        
        else
            puts "ホイ！"
            puts "_______________"
            puts "あなた:#{your_choice}"
            puts "相手:#{vs_choice}"
            puts "_______________" 
        
            if your_number == vs_number 
                sameflag = true
                # puts "sameflagはtrueです"
            end

        
            if winflag1 == true && sameflag == true
                puts "You win!"
                big_loopflag = false

             elsif winflag1 == false && sameflag == true
                puts "You lose.."
                big_loopflag = false
            else
                big_loopflag = true
                loopflag1 = true
            end
        end   
    end
end
    