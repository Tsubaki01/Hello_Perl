use strict;
use warnings;

# 変数

# スカラー変数 変数　$
my $msg = "hello world\n";

# コメントを書くぜ
# print $msg; # コメントだぜ

my $x = 10.;
my $y = 10.7;
my $z = 123_456_789;

my $xx = 10 * 10; # 100
my $yy = 10 % 3; # 1

my $name = "tom";
my $a = "he\tllo $name\n"; # 特殊文字（\n,\t）が使える、変数展開がされる
my $b = 'he\tllo $name\n';
# print $a;
# print $b;
# print "\n";
# . x

# print "hello " . "workd";

# 配列変数　リスト　@
my @sales = (150, 200, 300);
my @colors = ('red', 'green');
my @mixed = (150, 'red', 1.5);
# print @sales;

my @inc = (1..100); # 1~100全ての数字をリストに入れている
my @colors2 = qw(red green); #クォーテーションが要らない
# print @inc;

# print $sales[1]; # 150
# print $sales[-1]; # 200
# print @sales[0..1] #150200
# print $sales[$#sales]; # 300 末尾を指定している
# print @sales[0..$#sales]; #全ての要素を取り出しているのが分かりやすい

# ハッシュ変数　キーと値　%
my %sales = ("tanaka"=>300, "suzuki"=>150, "ohira"=>200);

# print %sales{"tanaka"}; #tanaka300 キーと値両方出力される
# print $sales{"tanaka"}; #300 値だけ出力される

# 条件分岐と比較演算子
my $score = 85;
my $father_name = "Luke";

# 数値の比較: < > >= == !=
if ($score >= 80) {
    # print("OK!");
} elsif ($score >= 40) {
    # print("not ok...");
} else {
    # print("take the test again!");
}

# 文字列の比較
# : eq(==) ne(!=) gt(>)[greater then] lt(<)[less then] ge(>=)[greater then or equal] le(<=)[less then or equal]
# &&(AND) ||(OR) !(NOT)
# : 0-9 < A-Z < a-z
if ($father_name eq "Luke") {
#     print("I anm your father!!");
}

# if文の後置
# print("OK!") if ($score >= 80); # OK!

# 三項演算子 if ... else ...
# (条件) ? 値1 : 値2
my $aa = 10;
my $bb = 20;

my $max = $aa > $bb ? $aa : $bb;
# print $max; # 20

# ループ処理
my $i = 0;
# while
# while ($i < 10) {
#     print "i = $i\n";
#     $i++;
# }
# for
# for (my $j = 0; $j < 10; $j++) {
#     print "j = $j\n";
# }
# foreach
my @colors3 = qw(red green blue orange pink);
# foreach my $color (@colors3) {
#     print "color = $color\n";
# }
# ↑↓同じ処理
# for (@colors3) {
#     print "color = $_\n";
# }

my %sales2 = ("tanaka"=>300, "suzuki"=>150, "ohira"=>200);
# foreach my $key (keys(%sales2)) {
#     print "sales for $key is $sales{$key}\n";
# }
# ↑↓同じ処理
for (keys %sales2) {
    print "sales for $_ is $sales{$_}\n";
}