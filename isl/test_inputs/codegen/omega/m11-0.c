for (int c0 = 1; c0 <= min(4, floord(2 * m - 1, 17) + 1); c0 += 1)
  for (int c1 = 1; c1 <= 2; c1 += 1)
    for (int c2 = 0; c2 <= min(-c1 + c1 / 2 + 3, -c0 - c1 + (2 * m + 3 * c0 + 10 * c1 + 6) / 20 + 1); c2 += 1)
      for (int c3 = 8 * c0 + (c0 + 1) / 2 - 8; c3 <= min(min(8 * c0 + c0 / 2, 30), m - 5 * c1 - 10 * c2 + 5); c3 += 1)
        for (int c4 = 5 * c1 + 10 * c2 - 4; c4 <= min(m - c3 + 1, 5 * c1 + 10 * c2); c4 += 1)
          s0(c0, c1, c2, c3, c4, -9 * c0 + c3 + c0 / 2 + 9, -5 * c1 - 5 * c2 + c4 + 5);
