lip_cancer = readRDS("results/lip_cancer.rds")
W = readRDS("results/W.rds")
m = readRDS("results/m.rds")

data = list(
  n = nrow(lip_cancer), p = 1,
  W = W, m = m,
  log_offset = log(lip_cancer$Expected),
  y = lip_cancer$Observed,
  X = matrix(1, nrow = nrow(lip_cancer), ncol=1)
) 

options(mc.cores = parallel::detectCores())
full_fit <- rstan::stan("models/car_model.stan", data = data, 
                        iter = 1000, chains = 2, verbose = FALSE)

saveRDS(full_fit, "results/car_fit.rds")
