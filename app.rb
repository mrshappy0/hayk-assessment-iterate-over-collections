require 'pry'

class Company
    attr_accessor :name, :size
    @@all = []

    def initialize(name, size)
        @name = name
        @size = size
        @@all << self
    end

    def self.all_companies
        @@all
    end

    def self.generate_list
        all_companies.map {|company| puts "#{company.name} - #{company.size}"}
    end

    def self.sum_with_reduce
        all_companies.reduce(0){|sum, company_size| sum + company_size.size}
    end

    def self.corporate_scum_jk_lol
        all_companies.select{|company| company.size > 100}
    end

    def self.find_wannabe_alphas_bro
        all_companies.find{|company| company.name == 'Beta'}
    end

    def self.largest_company
        all_companies.max {|company| company.size}
    end

    def self.sort_large_to_small
        all_companies.sort {|company| company.size}
    end

end

companies = [
    Company.new("Alpha", 30),
    Company.new("Beta", 300),
    Company.new("Delta", 3000)
]

# Company.generate_list

binding.pry

### Your code below this
