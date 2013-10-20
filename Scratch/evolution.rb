class Evolution
  # To change this template use File | Settings | File Templates.
  def match_for_DNA(string)
    return false if !string.match(/(^[ACGU]+$|^[AGCT]+$)/)
    return true
  end
  def match_for_DNA_1(string)
    return false if !string.match(/^[ACGUT]+$/)
    return true
  end
  def match_for_DNA_2(string)
    return false if !string.match(/^[(ACGU)|(ACGT)]+$/)
    return true
  end
  def match_for_DNA_3(string)
    return false if !string.match(/^([ACG]|[TU])+$/)
    return true
  end
end


e = Evolution.new
puts "000000000000000000000000"
puts e.match_for_DNA("AGTAACACCACTACTGCGACCCAAATGCACCCTTTCCACGAACACAGGGTTGTCCGATCCTATATTACGACTCCGGGAAGGGGTTCGCAAGTCGCACCCTAAACGATGTTGAAGGCTCAGGATGCACAGGC")
puts e.match_for_DNA("AGUAACACCACUACUGCGACCCAAAUGCACCCUUUCCACGAACACAGGGUUGUCCGAUCCUAUAUUACGACUCCGGGAAGGGGUUCGCAAGUCGCACCCUAAACGAUGUUGAAGGCUCAGGAUGCACAGGC")
puts e.match_for_DNA("AGUAACACCAXUACUGCGACCCAAAUGCACCCUUUCCACGAACACAGGGUUGUCCGAUCCUAUAUUACGACUCCGGGAAGGGGUUCGCAAGUCGCACCCUAAACGAUGUUGAAGGCUCAGGAUGCACAGGC")

puts e.match_for_DNA("AGUAACACCAXUACUGCGACCCAAAUGCACCCUUUCCACGAACACAGGGUUGUCCGAUCCUAUAUUACGACUCCGGGAAGGGGUUCGCAAGUCGCACCCUAAACGAUGUUGAAGGCUCAGGAUGCACAGGC")

puts "One incorrect base"
puts e.match_for_DNA("AGTAACACCACTACTGCGACCCAAATUGCACCCTTTCCACGAACACAGGGTTGTCCGATCCTATATTACGACTCCGGGAAGGGGTTCGCAAGTCGCACCCTAAACGATGTTGAAGGCTCAGGATGCACAGGC")


puts "1111111111111111111111111111"
puts e.match_for_DNA_1("AGTAACACCACTACTGCGACCCAAATGCACCCTTTCCACGAACACAGGGTTGTCCGATCCTATATTACGACTCCGGGAAGGGGTTCGCAAGTCGCACCCTAAACGATGTTGAAGGCTCAGGATGCACAGGC")
puts e.match_for_DNA_1("AGUAACACCACUACUGCGACCCAAAUGCACCCUUUCCACGAACACAGGGUUGUCCGAUCCUAUAUUACGACUCCGGGAAGGGGUUCGCAAGUCGCACCCUAAACGAUGUUGAAGGCUCAGGAUGCACAGGC")
puts e.match_for_DNA_1("AGUAACACCFTCUGCGACCCAAAUGCACCCUUUCCACGAACACAGGGUUGUCCGAUCCUAUAUUACGACUCCGGGAAGGGGUUCGCAAGUCGCACCCUAAACGAUGUUGAAGGCUCAGGAUGCACAGGC")

puts "One incorrect base 1"
puts e.match_for_DNA_1("AGTAACACCACTACTGCGACCCAAATUGCACCCTTTCCACGAACACAGGGTTGTCCGATCCTATATTACGACTCCGGGAAGGGGTTCGCAAGTCGCACCCTAAACGATGTTGAAGGCTCAGGATGCACAGGC")

puts "22222222222222222222222"
puts e.match_for_DNA_2("AGTAACACCACTACTGCGACCCAAATGCACCCTTTCCACGAACACAGGGTTGTCCGATCCTATATTACGACTCCGGGAAGGGGTTCGCAAGTCGCACCCTAAACGATGTTGAAGGCTCAGGATGCACAGGC")
puts e.match_for_DNA_2("AGUAACACCACUACUGCGACCCAAAUGCACCCUUUCCACGAACACAGGGUUGUCCGAUCCUAUAUUACGACUCCGGGAAGGGGUUCGCAAGUCGCACCCUAAACGAUGUUGAAGGCUCAGGAUGCACAGGC")
puts e.match_for_DNA_2("AGUAACACTTRUACUGCGACCCAAAUGCACCCUUUCCACGAACACAGGGUUGUCCGAUCCUAUAUUACGACUCCGGGAAGGGGUUCGCAAGUCGCACCCUAAACGAUGUUGAAGGCUCAGGAUGCACAGGC")

puts e.match_for_DNA_2("AGUAACACTTRUACUGCGACCCAAAUGCACCCUUUCCACGAACACAGGGUUGUCCGAUCCUAUAUUACGACUCCGGGAAGGGGUUCGCAAGUCGCACCCUAAACGAUGUUGAAGGCUCAGGAUGCACAGGC")

puts "One incorrect base 2"
puts e.match_for_DNA_1("AGTAACACCACTACTGCGACCCAAATUGCACCCTTTCCACGAACACAGGGTTGTCCGATCCTATATTACGACTCCGGGAAGGGGTTCGCAAGTCGCACCCTAAACGATGTTGAAGGCTCAGGATGCACAGGC")

puts "333333333333333333333333333333"
puts e.match_for_DNA_3("AGTAACACCACTACTGCGACCCAAATGCACCCTTTCCACGAACACAGGGTTGTCCGATCCTATATTACGACTCCGGGAAGGGGTTCGCAAGTCGCACCCTAAACGATGTTGAAGGCTCAGGATGCACAGGC")
puts e.match_for_DNA_3("AGUAACACCACUACUGCGACCCAAAUGCACCCUUUCCACGAACACAGGGUUGUCCGAUCCUAUAUUACGACUCCGGGAAGGGGUUCGCAAGUCGCACCCUAAACGAUGUUGAAGGCUCAGGAUGCACAGGC")
puts e.match_for_DNA_3("AGUAUGUCCACUACUGCGACCCAAAUGCACCCUUUCCACGAACACAGGGUUGUCCGAUCCUAUAUUACGACUCCGGGAAGGGGUUCGCAAGUCGCACCCUAAACGAUGUUGAAGGCUCAGGAUGCACAGGC")
