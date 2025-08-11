# 📚 CRUD Amaliyotlari

**Database nomi**: `book_store_db`
**Table nomi**: `books`
**Ustunlar**:

* `id` — SERIAL PRIMARY KEY
* `title` — VARCHAR(100)
* `author` — VARCHAR(50)
* `price` — NUMERIC(6,2)
* `is_available` — BOOLEAN DEFAULT TRUE

---

## 1️⃣ **CREATE (INSERT) — 5 ta topshiriq**

**Vazifa:** `books` jadvaliga ma’lumot qo‘shish.

1. `"Clean Code"`, `"Robert C. Martin"`, `25.50`
2. `"The Pragmatic Programmer"`, `"Andrew Hunt"`, `30.00`
3. `"Python Crash Course"`, `"Eric Matthes"`, `22.99`
4. `"Atomic Habits"`, `"James Clear"`, `18.75`
5. `"Deep Work"`, `"Cal Newport"`, `27.45`

**Misol query:**

```sql
INSERT INTO books (title, author, price)
VALUES ('Clean Code', 'Robert C. Martin', 25.50);
```

---

## 2️⃣ **READ (SELECT) — 5 ta topshiriq**

**Vazifa:** `books` jadvalidan ma’lumot o‘qish.

1. Barcha kitoblarni chiqar.
2. Faqat `title` va `price` ustunlarini chiqar.
3. Narxi `25.00` dan katta bo‘lgan kitoblarni chiqar.
4. `is_available = TRUE` bo‘lgan kitoblarni chiqar.
5. Kitoblarni narx bo‘yicha kamayish tartibida chiqar.

**Misol query:**

```sql
SELECT * FROM books;
```

---

## 3️⃣ **UPDATE — 5 ta topshiriq**

**Vazifa:** `books` jadvalidagi ma’lumotlarni yangilash.

1. `"Clean Code"` kitobining narxini `27.00` ga o‘zgartir.
2. `"Atomic Habits"` kitobining narxini `20.00` ga o‘zgartir.
3. `"Python Crash Course"` kitobining `is_available` ustunini `FALSE` ga o‘zgartir.
4. Narxi `30.00` bo‘lgan kitoblarning `is_available` ustunini `FALSE` ga o‘zgartir.
5. Barcha kitoblarning narxini `+2.00` ga oshir.

**Misol query:**

```sql
UPDATE books SET price = 27.00 WHERE title = 'Clean Code';
```

---

## 4️⃣ **DELETE — 5 ta topshiriq**

**Vazifa:** `books` jadvalidan ma’lumot o‘chirish.

1. `"Deep Work"` kitobini o‘chir.
2. Narxi `20.00` dan kichik bo‘lgan kitoblarni o‘chir.
3. `is_available = FALSE` bo‘lgan kitoblarni o‘chir.
4. `"Atomic Habits"` va `"Clean Code"` kitoblarini o‘chir.
5. Jadvaldagi barcha kitoblarni o‘chir.

**Misol query:**

```sql
DELETE FROM books WHERE title = 'Deep Work';
```
