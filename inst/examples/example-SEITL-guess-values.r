# All the parameter sets below make some common assumptions:
# 1) latent and infectious period equal to 2 and 2 days respectively
# 2) duration of immunity equal to 15 - 2 = 13 days
# 3) 80% of symptomatic and 85% of cases in the data so the total reporting rate rho = 0.8*0.85 ~ 0.7  
# 4) The 2 islanders with symptoms at disembarkation are infectious
# 5) The 3 islanders who were ill during the 8-day journey are temporary protected
# 6) No islander immune at the beginning of the epidemic 

# Additional assumptions for guess 1
# R0 as in large populations
# probability to develop long-term protection equal to seroconversion rate (80%)
theta.guess1 <- c("R0"=2, "D_lat"=2 , "D_inf"=2, "alpha"=0.8, "D_imm"=13, "rho"=0.7)
init.state.guess1 <- c("S"=279,"E"=0,"I"=2,"T"=3,"L"=0,"Inc"=0)

# Additional assumptions for guess 2
# R0 as in close knit communities (=> larger 1rst wave)
# probability to develop long-term protection equal to seroconversion rate (80%)
theta.guess2 <- c("R0"=10, "D_lat"=2 , "D_inf"=2, "alpha"=0.8, "D_imm"=13, "rho"=0.7)
init.state.guess2 <- c("S"=279,"E"=0,"I"=2,"T"=3,"L"=0,"Inc"=0)

# Additional assumptions for guess 3
# R0 as in close knit communities (=> larger 1rst wave)
# probability to develop long-term protection (50%) lower than the seroconversion rate (80%) (=> larger 2nd wave)
theta.guess3 <- c("R0"=10, "D_lat"=2 , "D_inf"=2, "alpha"=0.5, "D_imm"=13, "rho"=0.7)
init.state.guess3 <- c("S"=279,"E"=0,"I"=2,"T"=3,"L"=0,"Inc"=0)
