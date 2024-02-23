<mxfile host="app.diagrams.net" modified="2024-02-12T17:12:10.528Z" agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36" etag="pGbaglSf6fQIOi0fTQHN" version="23.1.1" type="device">
  <diagram name="Страница — 1" id="HNTVmTiuVV0rTl5AH9p9">
    <mxGraphModel dx="819" dy="373" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="827" pageHeight="1169" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-4" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;entryX=0.5;entryY=0;entryDx=0;entryDy=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-1" target="y2fTmG-2lgqCZsV_mOAK-3">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-1" value="Получить URL и проверить его валидность" style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="10" y="10" width="170" height="70" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-6" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-3" target="y2fTmG-2lgqCZsV_mOAK-5">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-3" value="Создаем поток и начинаем загрузку файла. Поток отвечает за скачивание всего файла" style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="10" y="120" width="170" height="70" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-8" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;entryX=0.5;entryY=0;entryDx=0;entryDy=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-5" target="y2fTmG-2lgqCZsV_mOAK-7">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-5" value="Получаем имя файла, тип файла, размер (из заголовка&amp;nbsp; URL) и обновляем GUI, устанавливая эти параметры." style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="10" y="230" width="170" height="70" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-12" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=1;exitY=0.5;exitDx=0;exitDy=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-7">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="230" y="375" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-7" value="Ищем поле с заголовком accept-ranges (позволяет запрашивать только часть файла)" style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="10" y="340" width="170" height="70" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-21" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;entryX=0.5;entryY=0;entryDx=0;entryDy=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-10" target="y2fTmG-2lgqCZsV_mOAK-20">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-10" value="Такое поле есть&lt;br&gt;&amp;nbsp;и оно не равно none?" style="rhombus;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="230" y="325" width="160" height="100" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-14" value="Нет" style="text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="1">
          <mxGeometry x="370" y="348.75" width="60" height="30" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-16" value="Остановить поток скачивания нельзя. Скачивание продолжается до завершения, отмены или ошибки." style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="460" y="470" width="170" height="70" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-17" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0.482;entryY=0.004;entryDx=0;entryDy=0;entryPerimeter=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-10" target="y2fTmG-2lgqCZsV_mOAK-16">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-19" value="Да" style="text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="1">
          <mxGeometry x="269" y="412" width="60" height="30" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-22" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-20">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="310.1428571428571" y="590" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-20" value="Существует возможность приостановить скачивание файла (&quot;запросы по кускам&quot;), а также ускорить это скачивание." style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="225" y="470" width="170" height="70" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-25" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;entryX=0.5;entryY=0;entryDx=0;entryDy=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-23" target="y2fTmG-2lgqCZsV_mOAK-24">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-23" value="Останавливаем поток, который начал скачивание.&amp;nbsp;" style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="225" y="590" width="170" height="70" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-29" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-24">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="310.1428571428571" y="820" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-24" value="Создаем 8 потоков для скачивания, каждый из которых соотв. (contentLength-downloaded)/8" style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="225" y="710" width="170" height="70" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-26" value="&lt;h1 style=&quot;font-size: 11px;&quot;&gt;Замечание&lt;/h1&gt;&lt;div style=&quot;font-size: 11px;&quot;&gt;Больше 8 потоков нет смысла создавать: сервер может заподозрить DDos-Атаку&lt;/div&gt;" style="text;html=1;strokeColor=none;fillColor=none;spacing=5;spacingTop=-20;whiteSpace=wrap;overflow=hidden;rounded=0;fontSize=11;" vertex="1" parent="1">
          <mxGeometry x="55" y="720" width="170" height="60" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-28" value="&lt;h1 style=&quot;font-size: 11px;&quot;&gt;&lt;span style=&quot;font-weight: 400;&quot;&gt;Каждый из потоков ответственен за свою часть файла, которую он скачивает. Также такой поток имеет 2 свойства: startPosition(метка начала скачивания) и endPosition(метка конца скачивания)&lt;/span&gt;&lt;/h1&gt;" style="text;html=1;strokeColor=none;fillColor=none;spacing=5;spacingTop=-20;whiteSpace=wrap;overflow=hidden;rounded=0;fontSize=11;" vertex="1" parent="1">
          <mxGeometry x="395" y="710" width="215" height="85" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-33" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-32">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="310.1428571428571" y="900" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-32" value="Для каждого потока" style="shape=trapezoid;perimeter=trapezoidPerimeter;whiteSpace=wrap;html=1;fixedSize=1;" vertex="1" parent="1">
          <mxGeometry x="240" y="820" width="140" height="40" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-35" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-34">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="310.1428571428571" y="1010" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-34" value="Формируем HTTP-запрос со свойством range:&lt;br&gt;bytes=(startPosition+downloaded) + &quot;-&quot; + endPosition" style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="225" y="900" width="170" height="70" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-39" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=0;exitDx=0;exitDy=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-36">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="310.3103448275863" y="1090" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-36" value="Пока не обработаем&lt;br&gt;&amp;nbsp;все потоки" style="shape=trapezoid;perimeter=trapezoidPerimeter;whiteSpace=wrap;html=1;fixedSize=1;direction=west;" vertex="1" parent="1">
          <mxGeometry x="240" y="1010" width="140" height="40" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-37" value="&lt;h1 style=&quot;font-size: 11px;&quot;&gt;&lt;span style=&quot;font-weight: 400;&quot;&gt;В начальный момент downloaded равно нулю, так что каждый поток запросит часть в диапазоне [startPosition, endPosition].&lt;/span&gt;&lt;/h1&gt;" style="text;html=1;strokeColor=none;fillColor=none;spacing=5;spacingTop=-20;whiteSpace=wrap;overflow=hidden;rounded=0;fontSize=11;" vertex="1" parent="1">
          <mxGeometry x="395" y="900" width="215" height="85" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-41" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-40">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="310.1428571428571" y="1200" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-40" value="Все потоки подключены к серверу и получают байты и записывают их в файлы до завершения, остановки или ошибки" style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="225" y="1090" width="170" height="70" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-42" value="Как только все потоки завершили скачивание своих частей, части файлов объединяются в единый файл." style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="225" y="1200" width="170" height="70" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-43" value="Общий алгоритм скачивания файла" style="text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;fontStyle=1;fontSize=15;" vertex="1" parent="1">
          <mxGeometry x="180" y="10" width="160" height="60" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-44" value="Алгоритм остановки скачивания" style="text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;fontStyle=1;fontSize=15;" vertex="1" parent="1">
          <mxGeometry x="950" y="10" width="160" height="60" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-46" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-45">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="855.2857142857142" y="120" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-45" value="Поток начинает скачивать файл" style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="770" y="10" width="170" height="70" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-50" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-48" target="y2fTmG-2lgqCZsV_mOAK-49">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-48" value="Бесконечный цикл" style="shape=trapezoid;perimeter=trapezoidPerimeter;whiteSpace=wrap;html=1;fixedSize=1;" vertex="1" parent="1">
          <mxGeometry x="785" y="120" width="140" height="40" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-51" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-49">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="855.2857142857142" y="310" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-49" value="Проверяем состояние потока" style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="770" y="200" width="170" height="70" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-55" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;entryX=0.5;entryY=0;entryDx=0;entryDy=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-52" target="y2fTmG-2lgqCZsV_mOAK-53">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-65" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=1;exitY=0.5;exitDx=0;exitDy=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-52" target="y2fTmG-2lgqCZsV_mOAK-64">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-52" value="status == COMPLETED?" style="rhombus;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="773.75" y="308.75" width="162.5" height="70" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-56" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;entryX=0.5;entryY=0;entryDx=0;entryDy=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-53" target="y2fTmG-2lgqCZsV_mOAK-54">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-66" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-53" target="y2fTmG-2lgqCZsV_mOAK-63">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-53" value="status == PAUSED?" style="rhombus;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="773.75" y="412" width="162.5" height="70" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-58" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-54">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="855.2857142857142" y="630" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-67" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-54" target="y2fTmG-2lgqCZsV_mOAK-62">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-54" value="status == PAUSED?" style="rhombus;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="773.75" y="520" width="162.5" height="70" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-61" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;" edge="1" parent="1" source="y2fTmG-2lgqCZsV_mOAK-59" target="y2fTmG-2lgqCZsV_mOAK-60">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-59" value="Скачиваем свою часть файла дальше. Обрабатываем события." style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="770" y="630" width="170" height="70" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-60" value="Следующая итерация" style="shape=trapezoid;perimeter=trapezoidPerimeter;whiteSpace=wrap;html=1;fixedSize=1;flipH=0;flipV=1;" vertex="1" parent="1">
          <mxGeometry x="785" y="740" width="140" height="40" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-62" value="Обработка ситуации" style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="980" y="525" width="120" height="60" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-63" value="Обработка ситуации" style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="980" y="417" width="120" height="60" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-64" value="Обработка ситуации" style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="980" y="313.75" width="120" height="60" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-68" value="Да" style="text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="1">
          <mxGeometry x="910" y="318.75" width="60" height="30" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-69" value="Да" style="text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="1">
          <mxGeometry x="910" y="421" width="60" height="30" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-70" value="Да" style="text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="1">
          <mxGeometry x="910" y="530" width="60" height="30" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-71" value="Нет" style="text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="1">
          <mxGeometry x="810" y="370" width="60" height="30" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-72" value="Нет" style="text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="1">
          <mxGeometry x="810" y="470" width="60" height="30" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-73" value="Нет" style="text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="1">
          <mxGeometry x="810" y="580" width="60" height="30" as="geometry" />
        </mxCell>
        <mxCell id="y2fTmG-2lgqCZsV_mOAK-74" value="https://medium.com/@prashantprakash97/developing-a-download-manager-6c46cfab2584" style="text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="1">
          <mxGeometry x="1210" y="27" width="317" height="36" as="geometry" />
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
