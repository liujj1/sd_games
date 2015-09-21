class User < ActiveRecord::Base
  validates :tel, :presence => {:message => "电话号码不能为空!"}, length:{in:10..11 ,message:'请输入正确电话号码~~'}, :uniqueness => {:message=>"电话号码重复"}

  has_many :prizes


  def valid_number
    if self.number > 0
      self.number = self.number - 1
      self.save
      return true
    else
      return false
    end
  end



end
