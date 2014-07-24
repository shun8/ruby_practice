#!/usr/bin/ruby

class NBitPrint

  def initialize(ary)
    @ary = ary
  end

  def NBitPrint.printAry(ary)
    p ary
  end

end

class NBitAdd

  def initialize()
  end

  def NBitAdd.addAry(aryA, aryB)
    
    ary = Array.new
    carry = 0
    for idx in 0..aryB.size - 1 do
      
      ary[idx] = aryA[idx] + aryB[idx] + carry
      
      if ary[idx] >= 2
        ary[idx] -= 2
        carry = 1
      else
        carry = 0
      end
      
    end

    if carry == 1
      ary[aryB.size] = 1
    end

    return ary

  end

end


aryA = [0, 1, 0, 1, 0]
aryB = [1, 1, 1, 1, 1]

ary = NBitAdd.addAry(aryA, aryB)
NBitPrint.printAry(ary)
