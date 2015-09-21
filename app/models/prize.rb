class Prize < ActiveRecord::Base
  belongs_to :user

  def Prize.prize_leve(user)
    prize = Prize.where(code: Prize.newpass(4).to_i).where(user_id: nil).first
    if prize
      prize.user_id=user.id
      prize.save
      return prize
    else
      return nil
    end
  end

  def Prize.newpass(n)
    chars = ("0".."9").to_a
    newpass = ""
    1.upto(n) { |i| newpass << chars[rand(chars.size-1)] }
    return newpass
  end

end
