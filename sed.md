# sed のコマンド一覧

## メンタルモデル

たぶん本質は filter と map

- filter 系
  - `//` から始まるやつ（パターン）
  - 数字から始まるやつ（行数）
  - `d` コマンド
- map 系
  - p: `.forEach(x => print(x))`
  - s: `.map(x => f(x))`
  - a: `map(x => [x, y]).flat()`
  - i: `map(x => [y, x]).flat()`
  - c: `.map(x => y)`
  - y: `.map(x => x.replace(A, B))`

## コマンド一覧

コマンドの一覧

### p (print)

表示するだけ

```
sed '/^foo/ p'
```

### s (substitute)

置換する

```
# プリントするだけ
sed "s/foo/bar/p"
sed "s/foo/bar/gp"

# 書き込み
sed "s/foo/bar/w"
sed "s/foo/bar/gw"
```

### d (delete)

削除

```
# 3行目を削除
sed '3d' myfile
```

### a (append)

前に挿入

```
sed '2i\inserted text' myfile
```

### i (insert)

後に挿入

```
sed '2a\inserted text' myfile
```

### c (change)

行全体を変更

```
sed '2c\modified second line' myfile
```
