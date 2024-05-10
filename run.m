% تابعی برای محاسبهٔ انتگرال
f = @(x) x.^2;

% حد پایین و حد بالای انتگرال
a = 0;
b = 2;

% تعداد زیربازه‌ها
n = 100;

% محاسبهٔ انتگرال با روش سیمپسون
result = simpson(f, a, b, n);

% نمایش نتیجه
disp(['Approximate integral value: ', num2str(result)]);
