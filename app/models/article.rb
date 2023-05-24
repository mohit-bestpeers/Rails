class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy
  validates :title, :body, presence:true
  validates :title,uniqueness: true
  validates :body, length: { minimum: 10 }
  validates :term, acceptance:true

  before_validation :ensure_login_has_a_value
  after_validation :downcase_title , on: [ :create, :update ]

  private

  def ensure_login_has_a_value
       
     if !title.empty?
       self.title=self.title.upcase
     end
  end  

   def downcase_title
     self.email=self.email.downcase
   end

end
