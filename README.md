Adım 3: Docker İmajını Oluşturma

Aynı dizinde terminali açın ve aşağıdaki komutu çalıştırın:

Bash

docker build -t hello-world-image .
Adım 4: Docker Konteynerini Çalıştırma

Aşağıdaki komutu kullanarak konteyneri çalıştırın:

Bash

docker run -d --name hello-world-container hello-world-image
Adım 5: Konteynerin PID'sini Bulma

Aşağıdaki komutu kullanarak konteynerin PID'sini bulun:

Bash

docker inspect -f '{{.State.Pid}}' hello-world-container
Çıktı, konteynerin PID'si olacaktır (örneğin, 1234).

Adım 6: /proc/PID/cmdline Dosyasını İnceleme

PID'yi kullanarak /proc/PID/cmdline dosyasının içeriğini görüntüleyin:

Bash

sudo cat /proc/1234/cmdline
(1234'ü konteynerin gerçek PID'siyle değiştirin).

Çıktı, konteyner içinde çalışan Python sürecinin komut satırı argümanlarını gösterecektir. Örneğin:

python/app/hello.pyarg1arg2
Gördüğünüz gibi, cmdline dosyası, komut satırı argümanlarını boşluklarla ayrılmış tek bir satırda gösterir.

Açıklama:

Dockerfile içinde, CMD komutu, Python betiğini çalıştıracak komutu ve argümanları belirtir.
/proc/PID/cmdline dosyası, bu komut ve argümanları gösterir.
Bu örnek, Docker konteynerlerinde çalışan süreçlerin komut satırı argümanlarının nasıl görüntülenebileceğini gösterir.
