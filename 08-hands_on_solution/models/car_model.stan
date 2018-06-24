data {
  int<lower = 1> n;
  int<lower = 1> p;
  matrix[n, p] X;
  int<lower = 0> y[n];
  vector[n] log_offset;
  matrix<lower = 0, upper = 1>[n, n] W;
  vector[n] m;
}
transformed data{
  matrix<lower = 0>[n, n] D;
  D = diag_matrix(m);
}
parameters {
  vector[p] beta;
  vector[n] omega;
  real<lower = 0> tau;
  real<lower = 0, upper = 1> phi;
}
model {
  omega ~ multi_normal_prec(rep_vector(0, n), tau * (D - phi * W));
  beta ~ normal(0, 1);
  tau ~ gamma(2, 2);
  y ~ poisson_log(log_offset + X * beta + omega);
}
