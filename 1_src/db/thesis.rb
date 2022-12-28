class Thesis < Article

    validates :university, presence: true
    validates :thesis_type, presence: true

    #definir os campos que ficam com nil
    validates :journal_name, presence: false
    validates :volume, presence: false
    validates :issue, presence: false
    validates :proceedings, presence: false
    validates :place, presence: false
    validates :edition, presence: false
    validates :publisher, presence: false
   
end