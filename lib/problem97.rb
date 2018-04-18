def large_non_mersenne_prime
  ((2**7830457).to_s[-10..-1].to_i*28433 + 1).to_s[-10..-1].to_i
end
