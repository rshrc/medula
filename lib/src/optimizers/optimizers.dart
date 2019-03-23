import 'dart:math';

List<double> softmax(List<double> x, int n_out) {
  double max = 0.0;
  double sum = 0.0;

  for (int i = 0; i < n_out; i++) if (max < x[i]) max = x[i];

  for (int i = 0; i < n_out; i++) {
    x[i] = exp(x[i] - max);
    sum += x[i];
  }

  for (int i = 0; i < n_out; i++) x[i] /= sum;
  return x;
}
