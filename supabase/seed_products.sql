-- Generated SQL for whitesands-orders products
-- Total products: 1016
-- Generated at: 2026-04-23T00:13:29.408Z

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', '109BODY', '(미사용)109 바디', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"MG","colorName":"멜란지 그레이"},{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', '두상 디피용', '두상 디피용', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', '라자르 디피 집기 셋트', '라자르 디피 집기 셋트', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', '모자 스탠드', '모자 스탠드', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', '아무디 디피 집기', '아무디 디피 집기', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '악세사리', 'BAEM900B', '[블랙샌즈] 네오플랜 이너 밴드', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BIW01N9D', '[블랙샌즈] 23FW 애니멀 와펜 블랙캣 투톤 귀비니', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BIW02N9D', '[블랙샌즈] 23FW 애니멀 와펜 코끼리 투톤 귀비니', '[{"colorCode":"LG","colorName":"라벤더 그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BIW03N9D', '[블랙샌즈] 23FW 애니멀 와펜 호랑이 투톤 귀비니', '[{"colorCode":"GB","colorName":"골든브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BIW04N9D', '[블랙샌즈] 23FW 애니멀 와펜 팬더 투톤 귀비니', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BIW05N9D', '[블랙샌즈] 23FW 애니멀 와펜 핑크캣 투톤 귀비니', '[{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BIW06N9D', '[블랙샌즈] 23FW 애니멀 와펜 핑크캣 6각 비니', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BIW07N9D', '[블랙샌즈] 23FW 애니멀 와펜 팬더 6각 비니', '[{"colorCode":"CO","colorName":"코코아"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BIW08N9D', '[블랙샌즈] 23FW 애니멀 와펜 호랑이 6각 비니', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BIW09N9D', '[블랙샌즈] 23FW 애니멀 와펜 코끼리 6각 비니', '[{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BIW10N9D', '[블랙샌즈] 23FW 애니멀 와펜 블랙캣 6각 비니', '[{"colorCode":"BL","colorName":"블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJA01C3M', '[블랙샌즈] 24SS BS 로고 베이직 볼캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"BTY","colorName":"버터옐로우"},{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '2')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJA02C3M', '[블랙샌즈] 24SS BS 로고 자수 와펜 볼캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"LGN","colorName":"라이트 그린"},{"colorCode":"LOR","colorName":"라이트오렌지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '2')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJA03C3M', '[블랙샌즈] 24SS 심볼 시크트립 피그먼트 볼캡', '[{"colorCode":"BR","colorName":"브라운"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '2')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJA04C3M', '[블랙샌즈] 24SS 애니멀 와펜 호랑이 볼캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '2')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJA05C3M', '[블랙샌즈] 24SS 애니멀 와펜 코끼리 볼캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '2')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJA06C3M', '[블랙샌즈] 24SS 애니멀 와펜 팬더 볼캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '2')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJA07C3M', '[블랙샌즈] 24SS 애니멀 와펜 핑크캣 볼캡', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '2')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJA08C3M', '[블랙샌즈] 24SS 애니멀 와펜 블랙캣 볼캡', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '2')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJA09C3M', '[블랙샌즈] 24SS 캔버스 와펜 볼캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '2')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJA10C3M', '[블랙샌즈] 24SS 애니멀 와펜 시바견 볼캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '2')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJA11C3M', '[블랙샌즈] 24SS 애니멀 와펜 버니 볼캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '2')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJA12K9M', '[블랙샌즈] 24SS 로고 스탠다드 데님 워싱 버킷햇', '[{"colorCode":"BKD","colorName":"블랙데님"},{"colorCode":"BLD","colorName":"블루데님"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '2')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJA13C3M', '[블랙샌즈] 24SS 별 자수 리벳 피그먼트 볼캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"OR","colorName":"오렌지"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '2')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJA14C3M', '[블랙샌즈] 24SS 트윈스 자수 피그먼트 볼캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"MT","colorName":"민트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '2')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJA15C9M', '[블랙샌즈] 24SS 패치 데미지 워싱 데님 볼캡', '[{"colorCode":"BKD","colorName":"블랙데님"},{"colorCode":"BLD","colorName":"블루데님"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '2')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJA16C9M', '[블랙샌즈] 24SS 빈티지 하드 워싱 데님 볼캡', '[{"colorCode":"BLD","colorName":"블루데님"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '2')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJA17C3M', '[블랙샌즈] 24SS BS 하트 로고 배색 볼캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"LPP","colorName":"라이트 퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '2')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJA18C3M', '[블랙샌즈] 24SS 레터링 자수 배색 볼캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '2')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJA19C3M', '[블랙샌즈] 24SS BS 로고 자수 배색 볼캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"OR","colorName":"오렌지"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '2')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJA21C3M', '[블랙샌즈] 24SS 애니멀 와펜 팬더 아트 볼캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '2')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJF17N9S', '[블랙샌즈] 25FW 뉴 애니멀 와펜 부엉이 투톤 귀비니', '[{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'FREE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJF19N9S', '[블랙샌즈] 25FW 뉴 애니멀 와펜 북극곰 투톤 귀비니', '[{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'FREE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJF21N9S', '[블랙샌즈] 25FW 뉴 애니멀 와펜 늑대 투톤 귀비니', '[{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'FREE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJF23N9S', '[블랙샌즈] 25FW 뉴 애니멀 와펜 코알라 투톤 귀비니', '[{"colorCode":"APP","colorName":"애쉬퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'FREE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJF25N9S', '[블랙샌즈] 25FW 뉴 애니멀 와펜 표범 투톤 귀비니', '[{"colorCode":"DGY","colorName":"다크그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'FREE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJF31N9S', '[블랙샌즈] 25FW 애니멀와펜 부엉이 태슬 귀비니', '[{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJF32N9S', '[블랙샌즈] 25FW 애니멀와펜 북극곰 태슬 귀비니', '[{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJF33N9S', '[블랙샌즈] 25FW 애니멀와펜 늑대 태슬 귀비니', '[{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJF34N9S', '[블랙샌즈] 25FW 애니멀와펜 코알라 태슬 귀비니', '[{"colorCode":"LPP","colorName":"라이트 퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJF35N9S', '[블랙샌즈] 25FW 애니멀와펜 표범(컬러) 태슬 귀비니', '[{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJF36N9S', '[블랙샌즈] 25FW 애니멀와펜 표범(흑백) 태슬 귀비니', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BJM20C9M', '[블랙샌즈] 아치 자수 카모 메쉬 볼캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '2')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BKA05C3V', '[블랙샌즈] 25SS 스페이스 레이버 볼캡 퍼플', '[{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'FREE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BKA06K3V', '[블랙샌즈] 25SS 스페이스 레이버 버킷햇 퍼플', '[{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'FREE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BKA07C3V', '[블랙샌즈] 25SS 스페이스 레이버 볼캡 블랙', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'FREE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BKA08K3V', '[블랙샌즈] 25SS 스페이스 레이버 버킷햇 블랙', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'FREE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BKA09C3V', '[블랙샌즈] 25SS 빈티지 중청 워싱데님 볼캡', '[{"colorCode":"MBL","colorName":"중청/미들 블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'FREE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BKA10C3V', '[블랙샌즈] 25SS 빈티지 연청 워싱데님 볼캡', '[{"colorCode":"LBL","colorName":"연청/라이트 블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'FREE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BKA11J9V', '[블랙샌즈] 25SS 세이브미 캠프캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'FREE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BKA12C9V', '[블랙샌즈] 25SS 체크배색 스트랩백 캡', '[{"colorCode":"LBL","colorName":"연청/라이트 블루"},{"colorCode":"MBL","colorName":"중청/미들 블루"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'FREE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BKA13C3E', '[블랙샌즈] 25SS 베이직 워싱 로고 볼캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DB","colorName":"딥블루"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'FREE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BKA14C3E', '[블랙샌즈] 25SS 3D 심볼 워싱 볼캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"LBE","colorName":"라이트 베이지"},{"colorCode":"SBL","colorName":"스카이블루"},{"colorCode":"SGN","colorName":"세이지 그린"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BKF05C3V', '[블랙샌즈] 25FW 라이트 런닝자수 빈티지 볼캡', '[{"colorCode":"APK","colorName":"애쉬"},{"colorCode":"ASB","colorName":"핑크 애쉬블루"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"LGY","colorName":"라이트그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BKM04C3V', '[블랙샌즈] 25SS 레트로 로고 플레이 볼캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BRI","colorName":"벽돌"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'FREE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BKS01C3E', '[블랙샌즈] 25SS 코튼 트러커 캡', '[{"colorCode":"BK1","colorName":"블랙1"},{"colorCode":"BK2","colorName":"블랙2"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'FREE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BKW07N5S', '[블랙샌즈] 25FW 램스울 수공예 자수 비니', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"CRB","colorName":"크림베이지"},{"colorCode":"DGE","colorName":"딥 그린"},{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BKW09C3V', '[블랙샌즈] 25FW 컬러 브러쉬 워싱 데님 볼캡', '[{"colorCode":"APK","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '악세사리', 'BKW09N5S', '[블랙샌즈] 25FW 램스울 레게 헤어 비니', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BKW10C3V', '[블랙샌즈] 25FW 그라데이션 워싱 데님 볼캡', '[{"colorCode":"DJ","colorName":"진청"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BKW11C3V', '[블랙샌즈] 25FW 워싱패치 데미지 데님 볼캡', '[{"colorCode":"BJ","colorName":"흑청"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BKW12C3V', '[블랙샌즈] 25FW 두니빗 면 데미지 볼캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IP","colorName":"인디핑크"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BKW38N9Z', '[블랙샌즈] 24FW 스트라이프 유니크 귀비니', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'FREE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BLM11C3E', '[블랙샌즈] 26SS 빈티지 워시드 메쉬 볼캡', '[{"colorCode":"DB","colorName":"딥블루"},{"colorCode":"DGY","colorName":"다크그레이"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BLM12J7E', '[블랙샌즈] 26SS 세이브 미 아카이브 메쉬 캠프캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BLM13K7E', '[블랙샌즈] 26SS 세이브 미 아카이브 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BLS01C9V', '[블랙샌즈] 26SS 피그먼트 립 워싱 볼캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BLS02C3V', '[블랙샌즈] 26SS 인비저블 데미지 워싱 볼캡', '[{"colorCode":"BJ","colorName":"흑청"},{"colorCode":"MBL","colorName":"중청/미들 블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BLS03N9S', '[블랙샌즈] 26SS 디스트로이드 니트 비니', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BLS04C3E', '[블랙샌즈] 26SS 크롬 서펀트 워싱 볼캡', '[{"colorCode":"DBL","colorName":"다크블루"},{"colorCode":"DGY","colorName":"다크그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BLS05C3V', '[블랙샌즈] 26SS 프레이드 배색 워싱 볼캡', '[{"colorCode":"LBL","colorName":"연청/라이트 블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BLS06C3V', '[블랙샌즈] 26SS 빈티지 타이포 워시드 볼캡', '[{"colorCode":"NV","colorName":"네이비"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BLS07C9V', '[블랙샌즈] 26SS 데미지 페이즐리 스카프 볼캡', '[{"colorCode":"BLB","colorName":"블루블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BLS08C3V', '[블랙샌즈] 26SS 워시드 숏 두니빗 볼캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LBL","colorName":"연청/라이트 블루"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BLS09C3V', '[블랙샌즈] 26SS 페이디드 립스탑 롱 두니빗 볼캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BLS10C3V', '[블랙샌즈] 26SS 아이즈 온 레오파드 볼캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"SB","colorName":"세이지 블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSCHA005', '[블랙샌즈] 22SS 스탠다드 불륨 자수 볼캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSCHA006', '[블랙샌즈] 22SS 스포티 시그니처 자수 볼캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSCHA007', '[블랙샌즈] 22SS 심볼 라인 자수 볼캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LPP","colorName":"라이트 퍼플"},{"colorCode":"OR","colorName":"오렌지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSCHA008', '[블랙샌즈] 22SS 심볼 시크트립 자수 볼캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"OR","colorName":"오렌지"},{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSCHA009', '[블랙샌즈] 22SS 에센셜 심플 자수 볼캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSCHA010', '[블랙샌즈] 22SS 원스업 타임 자수 볼캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LPP","colorName":"라이트 퍼플"},{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSCHA011', '[블랙샌즈] 22SS 칠랙스 에센셜 자수 볼캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LGN","colorName":"라이트 그린"},{"colorCode":"LPP","colorName":"라이트 퍼플"},{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSCHA012', '[블랙샌즈] 22SS 트윈스 배색 자수 볼캡', '[{"colorCode":"GN","colorName":"그린"},{"colorCode":"LPP","colorName":"라이트 퍼플"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSCHA013', '[블랙샌즈] 22SS 플라워 가든 자수 볼캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSCHA014', '[블랙샌즈] 22SS 데일리 머스트 블랙 볼캡', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSCHA015', '[블랙샌즈] 22SS 하이틴 투게더 자수 볼캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"LGN","colorName":"라이트 그린"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSCHA016', '[블랙샌즈] 22SS 유어스 영데이 자수 볼캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSCHA017', '[블랙샌즈] 22SS스카이 빈티지 자수 볼캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSCHA018', '[블랙샌즈] 22SS 키치 포인트 자수 볼캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSCHA019', '[블랙샌즈] 22SS 써클 패치 자수 볼캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSCHA020', '[블랙샌즈] 22SS 해피 돈 워리 볼캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSCHA021', '[블랙샌즈] 22SS 플로킹 플라스틱 볼캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSCHA022', '[블랙샌즈] 22SS 플로킹 에디튜드 볼캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSHHA001', '[블랙샌즈] 22SS 스탠다드 코튼 버킷햇', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSHHA002', '[블랙샌즈] 22SS 오버사이즈 코튼 버킷햇', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSHHA003', '[블랙샌즈] 22SS 로고 스탠다드 코튼 버킷햇', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSHHA004', '[블랙샌즈] 22SS 로고 오버사이즈 코튼 버킷햇', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSHHA023', '[블랙샌즈] 22SS 써클 패치 자수 버킷햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSHHA024', '[블랙샌즈] 22SS 플레이크 자수 버킷햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSHHA025', '[블랙샌즈] 22SS 그립 홀로 자수 버킷햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSHHA026', '[블랙샌즈] 22SS 심볼 시크트립 자수 버킷햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSHHA027', '[블랙샌즈] 22SS 스쿨 캐주얼 자수 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSHHA028', '[블랙샌즈] 22SS 인터내셜 자수 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSHHA029', '[블랙샌즈] 22SS 베이직 심볼 로고 자수 버킷햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSHHA030', '[블랙샌즈] 22SS 러브 라인 자수 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M/L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSHHA031', '[블랙샌즈] 22FW 비케이 윈터 스트링 버킷햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSHHA032', '[블랙샌즈] 22FW 로고 패치 니트 비니', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"OR","colorName":"오렌지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSHHA033', '[블랙샌즈] 22FW 로고 자카드 숏 비니', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSHHA034', '[블랙샌즈] 22FW 알파카 울 니트 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"OGN","colorName":"올리브(그린)"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSHHA035', '[블랙샌즈] 22FW  하이 유니섹스 니트 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('블랙샌즈', '블랙샌즈', 'BSPBWH20H13A', '블랙샌즈 선물박스 (M)', '[{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'C202S-08F', 'C202S-08F', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'CHHA7A3T', '화이트샌즈 X 이예기  콜라보 버킷햇', '[{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'CKA103Z9Z', '[화이트샌즈_그린] 25FW 그린라벨 UV 프로텍션 초경량 콜라보 우산 양산 겸용 현준쿤', '[{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'CPHA0A3O', '화이트샌즈 X 이예기 콜라보 에코백', '[{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'CVHM1A0W', '화이트샌즈 X 이예기 콜라보 라피아 썬캡', '[{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'CVHM1A3O', '화이트샌즈 X 이예기  콜라보 썬캡', '[{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'CZHA0A3O', '화이트샌즈 X 이예기  콜라보 파우치', '[{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'DELIVERY', '택배비', '[{"colorCode":"PRI","colorName":"비용"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'DELIVERY3000', '택배비3000', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'EVENT001', '균일가 19,000원', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'EVENT002', '균일가 29,000원', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJA92C7M', '[화이트샌즈] 24SS 그린라벨 선쉴드 볼캡 파인힐 (Pinehill)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DGY","colorName":"다크그레이"},{"colorCode":"KG","colorName":"카키 그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJF44H7Z', '[화이트샌즈 그린라벨] 24FW 그린라벨  보닛햇 미니에르(Miniere)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"DBE","colorName":"다크 베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJF45H7Z', '[화이트샌즈 그린라벨] 24FW 그린라벨  크라운 변형 햇 노팅엄(Nottingham)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"DBE","colorName":"다크 베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJM77V9Z', '[화이트샌즈] 24SS 그린라벨 이지투캐리 UV 선바이저 레소토 (Lesotho)', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"GD","colorName":"골드"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"SV","colorName":"실버"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJM78V9D', '[화이트샌즈] 24SS 그린라벨 UV 선바이저 블러프 (Bluff)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DBL","colorName":"다크블루"},{"colorCode":"DP","colorName":"다크핑크"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJS25C9M', '[화이트샌즈] 24SS 그린라벨 이어플랩 볼캡  바우루 (Bauru)', '[{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJS26H9M', '[화이트샌즈] 24SS 그린라벨 버킷햇 아라샤 (Araxa)', '[{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJS27H9M', '[화이트샌즈] 24SS 그린라벨 언밸런스 플로피햇 타크나 (Tacna)', '[{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJS28H9M', '[화이트샌즈] 24SS 그린라벨 버킷햇 수야나 (Sullana)', '[{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJS29C9M', '[화이트샌즈] 24SS 그린라벨 볼캡 모치스 (Mochis)', '[{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJS30H7M', '[화이트샌즈] 24SS 그린라벨 버킷햇 샤프터 (Shafter)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJS31C7M', '[화이트샌즈] 24SS 그린라벨 캠프캡 플라타 (Plata)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJS32H7M', '[화이트샌즈] 24SS 그린라벨 버킷햇 라이언 (Ryan)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJS33C7M', '[화이트샌즈] 24SS 그린라벨 볼캡 페코스 (Pecos)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJS35H9M', '[화이트샌즈] 24SS 그린라벨 버킷햇 메나드 (Menard)', '[{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJS46V3L', '[화이트샌즈] 그린라벨 테리 선바이저 푸아코 (Puako)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJS51V8D', '[화이트샌즈] 24SS 그린라벨 선바이저 인지누 (Injinoo)', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJS52H7D', '[화이트샌즈] 24SS 그린라벨 선쉴드 버킷햇 카룸바 (Karumba)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJS53C3D', '[화이트샌즈] 그린라벨 포니테일 볼캡 두매지 (Doomadgee)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"VL","colorName":"바이올렛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJS58V9D', '[화이트샌즈] 24SS 그린라벨 선바이저 파일로 (Paauilo)', '[{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJS59K9D', '[화이트샌즈] 24SS 그린라벨 스트링 버킷햇 코할라 (Kohala)', '[{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJS60C9D', '[화이트샌즈] 24SS 그린라벨 볼캡 쿠키오 (Kukio)', '[{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJS61C9D', '[화이트샌즈] 24SS 그린라벨 이어머프 볼캡 페블스 (Pebbles)', '[{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJS62C9D', '[화이트샌즈] 24SS 그린라벨 와이드볼캡 키홀로 (Kiholo)', '[{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJW105T7J', '[화이트샌즈 그린라벨] 24FW 그린라벨 패딩 이어햇 룰레오(Lulea)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DGE","colorName":"딥 그린"},{"colorCode":"OWH","colorName":"오프화이트"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJW113Z9Z', '[화이트샌즈 그린라벨] 24FW 그린라벨 패딩 바라클라바 포르보(Porvoo)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJW114Z8Z', '[화이트샌즈 그린라벨] 24FW 그린라벨 패딩 보닛햇 아나카(Anaka)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJW115Z9Z', '[화이트샌즈 그린라벨] 24FW 그린라벨 패딩워머캡 델리니(Delini )', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DGE","colorName":"딥 그린"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJW116T7Z', '[화이트샌즈 그린라벨] 24FW 그린라벨 패딩 트루퍼캡 웨일즈(Wales)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"OWH","colorName":"오프화이트"},{"colorCode":"PB","colorName":"핑크베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GJW119T8J', '[화이트샌즈 그린라벨] 24FW 그린라벨 캠프캡 +이어워머 재스퍼(Jsper)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'GKA131Z9Z', '[화이트샌즈_그린] 25SS 심플 스트랩 세이블(Sable)- 숄더형', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"PP","colorName":"퍼플"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKA132Z9Z', '[화이트샌즈_그린] 25SS 심플 숏 스트랩 베스퍼(Vesper)- 손목형', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"PP","colorName":"퍼플"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKA133Z9Z', '[화이트샌즈_그린] 25SS 플라워 숏 스트랩 아루나(Aruna)- 손목형', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"LYE","colorName":"라이트 옐로우"},{"colorCode":"MU","colorName":"머스터드"},{"colorCode":"OR","colorName":"오렌지"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'GKA134Z9Z', '[화이트샌즈_그린] 25SS 태슬 스트랩 레아나(Leana)- 숄더형', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"SB","colorName":"세이지 블루"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKF05Z9Z', '[화이트샌즈 그린라벨] 25FW 비건 레더 스트랩 카를로', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"CM","colorName":"카멜"},{"colorCode":"IP","colorName":"인디핑크"},{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKM107K7V', '[화이트샌즈] 25SS 쿨링 넥 탈부착 메쉬 버킷햇 유레카(ureka)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKM108C7J', '[화이트샌즈] 25SS 그린라벨 쿨링 멀티유즈 타공 써머 캡 매카이(Mackay)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKM109V7J', '[화이트샌즈] 25SS 쿨링 타공 와이드 UV 썬캡 타란토(Taranto)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKM115Z9U', '[화이트샌즈_그린라벨] 25SS 그린라벨 냉감 UV 쿨링이어마스크 메르신(Mersin)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKM116Z9U', '[화이트샌즈] 25SS 그린라벨 냉감 UV 쿨링 하프 마스크 아다나(Adana)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"SN","colorName":"스킨"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKM117Z9U', '[화이트샌즈_그린라벨] 25SS 그린라벨 냉감 UV 쿨링 끈조절 마스크 린다우(Lindau)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"SN","colorName":"스킨"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GKM120Z9Z', '[화이트샌즈_그린라벨] 25SS 그린라벨 UV 프로텍션 컴팩트 솔리드 우양산 루노아(Lunoa)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"BTY","colorName":"버터옐로우"},{"colorCode":"CL","colorName":"코랄"},{"colorCode":"DGE","colorName":"딥 그린"},{"colorCode":"DP","colorName":"다크핑크"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IP","colorName":"인디핑크"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"PP","colorName":"퍼플"},{"colorCode":"SB","colorName":"세이지 블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GKM121Z9Z', '[화이트샌즈_그린라벨] 25SS 그린라벨 UV 프로텍션 컴팩트 트로피칼 우양산 리카타(Licata)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"RD","colorName":"레드"},{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GKM122Z9Z', '[화이트샌즈_그린라벨] 25SS 그린라벨 UV 프로텍션 컴팩트 모노그램 우양산 아노브(Anove)', '[{"colorCode":"CL","colorName":"코랄"},{"colorCode":"LV","colorName":"라벤더"},{"colorCode":"SBL","colorName":"스카이블루"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GKM123Z9Z', '[화이트샌즈_그린라벨] 25SS 그린라벨 UV 프로텍션 컴팩트 플라워 우양산 달리아(Dahlia)', '[{"colorCode":"OR","colorName":"오렌지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GKM124Z9Z', '[화이트샌즈_그린라벨] 25SS 그린라벨 UV 프로텍션 컴팩트 플라워 우양산 바레사(Baresa)', '[{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GKM125Z9Z', '[화이트샌즈_그린라벨] 25SS 그린라벨 UV 프로텍션 컴팩트 플라워 우양산 에세라(Esera)', '[{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GKM126Z9Z', '[화이트샌즈_그린라벨] 25SS 그린라벨 UV 프로텍션 컴팩트 플라워 우양산 지로나(Girona)', '[{"colorCode":"OLR","colorName":"올리브 레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GKM127Z9Z', '[화이트샌즈_그린라벨] 25SS 그린라벨 UV 프로텍션 컴팩트 플라워 우양산 알자스(Alsace)', '[{"colorCode":"IVP","colorName":"아이보리 핑크"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GKM128Z9Z', '[화이트샌즈_그린라벨] 25SS 그린라벨 UV 프로텍션 컴팩트 패턴 우양산 카이로(Cairo)', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"LPK","colorName":"라이트 핑크"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GKM129Z9Z', '[화이트샌즈_그린라벨] 25SS 그린라벨 UV 프로텍션 컴팩트 선인장 우양산 루미야(Lumiya)', '[{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GKM130Z9Z', '[화이트샌즈_그린라벨] 25SS 그린라벨 UV 프로텍션 컴팩트 빅 선인장 우양산 자네르(Zaner)', '[{"colorCode":"CL","colorName":"코랄"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GKM131Z9Z', '[화이트샌즈_그린라벨] 25SS 그린라벨 UV 프로텍션 컴팩트 태양 우양산 누사라(Nusara)', '[{"colorCode":"YEG","colorName":"옐로우 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKM1V0Z', '[화이트샌즈 그린라벨] 천연라피아 UV선바이저 루사카(Lusaka)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKM2V9Z', '[화이트샌즈_그린라벨] 25SS 그린라벨 천연라피아 와이드 UV 선바이저 발라카(Balaka)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKM38H8X', '[화이트샌즈_그린라벨] 25SS 그린라벨 UV 챙 유니크 숏 버킷햇 사란더(Saranda)', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKM3V0Z', '[화이트샌즈 그린라벨] 천연라피아 UV선바이저 레이나 ( Reina )', '[{"colorCode":"GN","colorName":"그린"},{"colorCode":"OR","colorName":"오렌지"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GKM61Z9Z', '[화이트샌즈 그린라벨] 25SS 그린라벨 UV 프로텍션 초경량 레오파드 우산 양산 겸용 아크라', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"SBL","colorName":"스카이블루"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKS27H8V', '[화이트샌즈_그린라벨] 25SS 그린라벨 워터프루프 투톤 변형 라운드햇 올러튼(Ollerton)', '[{"colorCode":"BGR","colorName":"블루그레이"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKS28H8V', '[화이트샌즈_그린라벨] 25SS 그린라벨 워터프루프 UV 차양막 투톤 버킷햇 도랜즈(Dowlands)', '[{"colorCode":"BGR","colorName":"블루그레이"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKS30K8V', '[화이트샌즈_그린라벨] 25SS 그린라벨 워터프루프 와이드 선쉐이드 캠프 플랩캡 라바울(Rabaul)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BGR","colorName":"블루그레이"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DB","colorName":"딥블루"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKS32H7V', '[화이트샌즈_그린라벨] 25SS 그린라벨 립스탑 라이트 버킷햇 브래이(Bray)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DGN","colorName":"다크그린"},{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKS33H7V', '[화이트샌즈_그린라벨] 25SS 그린라벨 립스탑 라이트 와이드 버킷햇 밸버튼(Bulverton)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DGN","colorName":"다크그린"},{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKS35C8H', '[화이트샌즈 _그린라벨] 25SS 그린라벨 워셔블 반다나 캡 볼로스', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"DGY","colorName":"다크그레이"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKS90I8V', '[화이트샌즈] 25SS 그린라벨 선블럭 기능 탈부착 차양막 보닛햇 팀바라(Timbarra)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKW18T7V', '[화이트샌즈 그린라벨] 25FW 퀼팅 패딩 트루퍼 햇 아말리', '[{"colorCode":"AB","colorName":"애쉬 브라운 애쉬"},{"colorCode":"APK","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKW28K8V', '[화이트샌즈 그린라벨] 25FW 탈착 워머 방한 버킷 햇 페르마', '[{"colorCode":"BGY","colorName":"블루"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IP","colorName":"인디핑크"},{"colorCode":"MKH","colorName":"인디핑크 민트카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKW29C8V', '[화이트샌즈 그린라벨] 25FW 방한 워머 캠프 캡 카르보', '[{"colorCode":"BGY","colorName":"블루"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IP","colorName":"인디핑크"},{"colorCode":"MKH","colorName":"인디핑크 민트카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKW45T7H', '[화이트샌즈 그린라벨] 25FW 플리스 이어머프 캠프 캡 엘부르', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CR","colorName":"크림"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKW46H7H', '[화이트샌즈 그린라벨] 25FW 플리스 탈착 워머 둥근 버킷 햇 코쉬카', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BGR","colorName":"블루그레이"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CR","colorName":"크림"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKW47K9C', '[화이트샌즈 그린라벨] 25FW 경량 패딩 버킷 햇+ 넥워머 SET 헬로나', '[{"colorCode":"BGR","colorName":"블루그레이"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKW48Z9U', '[화이트샌즈 그린] 25FW 방한 마스크 사디로', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LGY","colorName":"라이트그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKW49Z9U', '[화이트샌즈 그린] 25FW 방한 안면 마스크 벨루라', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LGY","colorName":"라이트그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GKW50Z9Z', '[화이트샌즈 그린] 25FW 방한 안면 애슬레저 마스크 아르반', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLA43Z9Z', '[화이트샌즈 그린라벨] 26SS MCRN X 루노아 숏 스트랩', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"BTY","colorName":"버터옐로우"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"LV","colorName":"라벤더"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"OR","colorName":"오렌지"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"SB","colorName":"세이지 블루"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLA44Z9Z', '[화이트샌즈 그린라벨] 26SS 비즈 숏 스트랩 트로사', '[{"colorCode":"GN","colorName":"그린"},{"colorCode":"ML","colorName":"멀티"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"SBL","colorName":"스카이블루"},{"colorCode":"WH","colorName":"화이트"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLA45Z9Z', '[화이트샌즈 그린라벨] 26SS 비즈 롱 스트랩 퍼스톤', '[{"colorCode":"GN","colorName":"그린"},{"colorCode":"ML","colorName":"멀티"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"SBL","colorName":"스카이블루"},{"colorCode":"WH","colorName":"화이트"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLA47Z9Z', '[화이트샌즈 그린라벨] 26SS 클래스볼 숏 스트랩 네루아', '[{"colorCode":"MT","colorName":"민트"},{"colorCode":"OR","colorName":"오렌지"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"PP","colorName":"퍼플"},{"colorCode":"RB","colorName":"레인보우"},{"colorCode":"SBL","colorName":"스카이블루"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLA48Z9Z', '[화이트샌즈 그린라벨] 26SS 진주 숏 스트랩 스칼라', '[{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLA78Z9Z', '[화이트샌즈 그린라벨] 26SS 유틸리티 웨빙 스트랩 테리오', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLA79Z9Z', '[화이트샌즈 그린라벨] 26SS 플로럴 숏 스트랩 라모아', '[{"colorCode":"BTY","colorName":"버터옐로우"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"SBL","colorName":"스카이블루"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLA81Z9Z', '[화이트샌즈 그린라벨] 26SS 웨이브 숏 스트랩 레브르', '[{"colorCode":"CL","colorName":"코랄"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"LEP","colorName":"레몬 퍼플"},{"colorCode":"OR","colorName":"오렌지"},{"colorCode":"PP","colorName":"퍼플"},{"colorCode":"SB","colorName":"세이지 블루"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GLM26Z9Z', '[화이트샌즈 그린라벨] 26SS 650F 원터치 폴딩랩 UV 우양산 필로스', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BTY","colorName":"버터옐로우"},{"colorCode":"IP","colorName":"인디핑크"},{"colorCode":"LV","colorName":"라벤더"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"PYB","colorName":"파스텔 스카이"},{"colorCode":"SV","colorName":"실버"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GLM27Z9Z', '[화이트샌즈 그린라벨] 26SS 650F 원터치 폴딩랩 UV 우양산 티브라', '[{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GLM28Z9Z', '[화이트샌즈 그린라벨] 26SS 650F 원터치 폴딩랩 UV 우양산 미르나', '[{"colorCode":"LV","colorName":"라벤더"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GLM29Z9Z', '[화이트샌즈 그린라벨] 26SS 650F 원터치 폴딩랩 UV 우양산 타르바', '[{"colorCode":"CBB","colorName":"코발트 블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GLM30Z9Z', '[화이트샌즈 그린라벨] 26SS 650F 원터치 폴딩랩 UV 우양산 니시아', '[{"colorCode":"LE","colorName":"레몬"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GLM31Z9Z', '[화이트샌즈 그린라벨] 26SS 650F 원터치 폴딩랩 UV 우양산 나비아', '[{"colorCode":"LI","colorName":"라임"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLM32H9Z', '[화이트샌즈 그린라벨] 26SS 에어플로우 메쉬 선쉐이드햇 아로사', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CD","colorName":"클라우드"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"PT","colorName":"피치"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GLM32Z9Z', '[화이트샌즈 그린라벨] 26SS 650F 원터치 폴딩랩 UV 우양산 하바라', '[{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLM33C9Z', '[화이트샌즈 그린라벨] 26SS 에어플로우 메쉬 선쉐이드 볼캡 타마르', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CD","colorName":"클라우드"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"PT","colorName":"피치"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GLM33Z9Z', '[화이트샌즈 그린라벨] 26SS 650F 원터치 폴딩랩 UV 우양산 코랄라', '[{"colorCode":"GL","colorName":"골든 레몬"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLM34C9V', '[화이트샌즈 그린라벨] 26SS 에어가드 마스크&와이드 캡 빌로트', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GLM34Z9Z', '[화이트샌즈 그린라벨] 26SS 650F 원터치 폴딩랩 UV 우양산 네르자', '[{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GLM35Z9Z', '[화이트샌즈 그린라벨] 26SS 650F 원터치 폴딩랩 UV 우양산 밀로스', '[{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'GLM36V9E', '[화이트샌즈 그린라벨] 26SS 쿨링 옴브레 모듈밴드 썬캡 다보스', '[{"colorCode":"CD","colorName":"클라우드"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLM37K9E', '[화이트샌즈 그린라벨] 26SS 쿨링 옴브레 타공 버킷햇 오울라', '[{"colorCode":"CD","colorName":"클라우드"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GLM37Z9Z', '[화이트샌즈 그린라벨] 26SS 650F 원터치 폴딩랩 UV 우양산 로디아', '[{"colorCode":"APK","colorName":"애쉬"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLM38K9E', '[화이트샌즈 그린라벨] 26SS 쿨쉐이드 와이드 브림햇 카일른', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"SBL","colorName":"스카이블루"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GLM38Z9Z', '[화이트샌즈 그린라벨] 26SS 700 우드 핸들 중 우산 양산 겸용 론다나', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BPK","colorName":"베이비 핑크"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"SFB","colorName":"소프트 버터"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GLM39Z9Z', '[화이트샌즈 그린라벨] 26SS 700 우드 핸들 중 우산 양산 겸용 아바라', '[{"colorCode":"GY","colorName":"그레이"},{"colorCode":"SGN","colorName":"세이지 그린"},{"colorCode":"VL","colorName":"바이올렛"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GLM40Z9Z', '[화이트샌즈 그린라벨] 26SS 850 우드 핸들 장 우산 양산 겸용 포시타', '[{"colorCode":"BGN","colorName":"블루그린"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DBN","colorName":"딥브라운"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GLM41Z9Z', '[화이트샌즈 그린라벨] 26SS 850 우드 핸들 장 우산 양산 겸용 루시아', '[{"colorCode":"CPK","colorName":"코튼핑크"},{"colorCode":"DB","colorName":"딥블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GLM42Z9Z', '[화이트샌즈 그린라벨] 26SS 850 우드 핸들 장 우산 양산 겸용 세팔로', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GRB","colorName":"그레이 블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLM49V9Z', '[화이트샌즈 그린라벨] 26SS UV 프로텍션 심리스 바이저 루아나', '[{"colorCode":"APK","colorName":"애쉬"},{"colorCode":"APP","colorName":"애쉬퍼플"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLM50Z9Z', '[화이트샌즈 그린라벨] 26SS UV 프로텍션 에어플로 쿨링 심리스 하프 마스크 라포니', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"SN","colorName":"스킨"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLM51Z9Z', '[화이트샌즈 그린라벨] 26SS UV 프로텍션 브리즈 쿨 이어 마스크 시오나', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"SGN","colorName":"세이지 그린"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLM52Z9Z', '[화이트샌즈 그린라벨] 26SS UV 프로텍션 브리즈 쿨 마스크 카루나', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"SN","colorName":"스킨"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLM53Z9Z', '[화이트샌즈 그린라벨] 26SS UV 프로텍션 에슬레저 남녀 공용 팔토시 노베아', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"SN","colorName":"스킨"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLM54Z9Z', '[화이트샌즈 그린라벨] 26SS UV 프로텍션 암슬리브 베니아', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"SN","colorName":"스킨"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLM56Z9Z', '[화이트샌즈 그린라벨] 26SS 쿨 에어가드 넥쿨러 스카프 보스라', '[{"colorCode":"CD","colorName":"클라우드"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GLM57Z9Z', '[화이트샌즈 그린라벨] 26SS 메쉬 우양산 멀티 파우치 트로페', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CL","colorName":"코랄"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLM82Z9Z', '{화이트샌즈 그린라벨} 26SS 아이스 쿨링 넥쿨러 아스카 160g', '[{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLM83Z9Z', '[화이트샌즈 그린라벨} 26SS 아이스 쿨링 넥쿨러 아스카 240g', '[{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GLM84Z9Z', '[화이트샌즈 그린라벨] 26SS 600 AIR 초경량 UV 우양산 엘루아', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BTY","colorName":"버터옐로우"},{"colorCode":"IP","colorName":"인디핑크"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GLM85Z9Z', '[화이트샌즈 그린라벨] 26SS 600 AIR 초경량 UV 우양산 크로사', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"SBL","colorName":"스카이블루"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GLM86Z9Z', '[화이트샌즈 그린라벨] 26SS 600 AIR 초경량 UV 우양산 루미아', '[{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GLM87Z9Z', '[화이트샌즈 그린라벨] 26SS 600 AIR 초경량 UV 우양산 사로나', '[{"colorCode":"OLR","colorName":"올리브 레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'GLM90Z9Z', '[화이트샌즈 그린라벨} 26SS WHITE SANDS 600 AIR UV Protection Parasol', '[{"colorCode":"BTY","colorName":"버터옐로우"},{"colorCode":"DGE","colorName":"딥 그린"},{"colorCode":"LGY","colorName":"라이트그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '양산', 'GLM92Z9Z', '[화이트샌즈 그린라벨] 26SS 650 자동 우양산 올레타', '[{"colorCode":"BTY","colorName":"버터옐로우"},{"colorCode":"IP","colorName":"인디핑크"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"LV","colorName":"라벤더"},{"colorCode":"PBU","colorName":"파스텔 블루"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'MASF013', '니트 슈즈 베이직 산드라 그린', '[{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '230/235/240/245/250')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'MASF014', '니트 슈즈 베이직 산드라 카멜', '[{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '230/235/240/245/250')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'MASF015', '니트 슈즈 베이직 산드라 블랙', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '230/235/240/245/250')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'MASF041', '니트 슈즈 차차 레드', '[{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '230/235/240/245/250')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'MASF042', '니트 슈즈 베이직 산드라 블루', '[{"colorCode":"BL","colorName":"블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '230/235/240/245/250')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'MASF043', '니트 슈즈 차차 마젠타', '[{"colorCode":"VL","colorName":"바이올렛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '230/235/240/245/250')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'MASF051', '니트 슈즈 츄러브 크림(골드)', '[{"colorCode":"CR","colorName":"크림"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '230/235/240/245/250')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'MASF052', '니트 슈즈 츄러브 블랙(그레이)', '[{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '230/235/240/245/250')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'MASF081', '니트 슈즈 베이직 산드라 퍼플', '[{"colorCode":"VL","colorName":"바이올렛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '230/235/240/245/250')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'MASF082', '니트 슈즈 베이직 산드라 레드', '[{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '230/235/240/245/250')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'MASF091', '니트 슈즈 산드라 베이지', '[{"colorCode":"GD","colorName":"골드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '230/235/240/245/250')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'MASF092', '니트 슈즈 산드라 핑크', '[{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '230/235/240/245/250')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'MASF093', '니트 슈즈 산드라 블랙', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '230/235/240/245/250')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'MASF094', '니트 슈즈 산드라 네이비', '[{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, '230/235/240/245/250')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PCHW5A5E', '[화이트샌즈 퍼플] 22FW 해리스트위드 마도로스캡 허클베리', '[{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PCHW6A5E', '[화이트샌즈 퍼플] 22FW 해리스트위드 뉴스보이캡 올리버', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PHHW0A5E', '[화이트샌즈 퍼플] 22FW 해리스트위드 버킷햇 알라나', '[{"colorCode":"BR","colorName":"브라운"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PHHW7A5E', '[화이트샌즈 퍼플] 22FW 해리스 트위드 버킷햇  카밀', '[{"colorCode":"NV","colorName":"네이비"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'S/ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PIA01K9Z', '[화이트샌즈 퍼플] 퍼플라벨 쿠로키 데님 버킷 하이프', '[{"colorCode":"DN","colorName":"데님"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PIA02C3L', '[화이트샌즈 퍼플] 퍼플라벨 파리카 트위드 볼캡 클로이', '[{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PIA02C9Z', '[화이트샌즈 퍼플] 23SS 퍼플라벨 구로키 데님 볼캡 코트니', '[{"colorCode":"DN","colorName":"데님"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PIA06H9T', '[화이트샌즈 퍼플] 퍼플라벨 파리카 트위드 버킷햇 레슬리', '[{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PIA07D8Z', '[화이트샌즈] 23SS TGR 자수 와이드 헤어밴드 도나(Donna)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PIA07K3L', '[화이트샌즈 퍼플] 23SS 퍼플라벨 쿠로키 워싱 데님 버킷 해리엇', '[{"colorCode":"DN","colorName":"데님"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PIA08K8L', '[화이트샌즈 퍼플] 23SS 퍼플라벨 TGR 모스키 나딘', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PIA09C8L', '[화이트샌즈 퍼플] 23FW 퍼플라벨 TGR 자수 볼캡 카롤린(Karolin)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PIA10C3L', '[화이트샌즈 퍼플] 23FW 퍼플라벨 TGR 자수 볼캡 헤다(Hedda)', '[{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PIA20C8T', '[화이트샌즈 퍼플] 23FW 퍼플라벨 TGR 마도로스 카시아 (Cascia)', '[{"colorCode":"CNV","colorName":"체크네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PIS01I3T', '[화이트샌즈 퍼플] 퍼플라벨 파리카 트위드 보닛햇 올리비아', '[{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PIW11C3L', '[화이트샌즈 퍼플] 23FW 퍼플라벨 TGR 코듀로이 볼캡 로베르', '[{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PIW12T5M', '[화이트샌즈 퍼플] 23FW 퍼플라벨 TGR 울 트루퍼햇 앰블러 (Ambler)', '[{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PIW13K3L', '[화이트샌즈 퍼플] 23FW 퍼플라벨 TGR 코듀로이 버킷 매카시', '[{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PIW14B5T', '[화이트 샌즈 퍼플] 23FW 퍼플라벨 해리스트위드 베레모 볼링거 (Ballinger)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PIW15H9T', '[화이트샌즈 퍼플] 23FW 퍼플라벨 TGR 보닛햇 벤베리 (Banbury)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PIW16H9T', '[화이트샌즈 퍼플] 23FW 퍼플라벨 TGR 플로피햇 브루언 (Bruern)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PIW17B5T', '[화이트샌즈 퍼플] 23FW 퍼플라벨 TGR  베레모 하트윅 (Hardwicke)', '[{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PIW18T5M', '[화이트샌즈 퍼플] 23FW 퍼플라벨 해리스트위드 트루퍼햇 벡슬리 (Bexley)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"OGN","colorName":"올리브(그린)"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PIW19T5M', '[화이트샌즈 퍼플] 23FW 퍼플라벨 TGR 트루퍼햇 애틀린 (Atlin)', '[{"colorCode":"BL","colorName":"블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJA16A3B', '[화이트샌즈] 24SS 퍼플라벨 액세사리 SET  알리스 (Alyth)', '[{"colorCode":"BL","colorName":"블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA16A3B1', '[화이트샌즈] 24SS 퍼플라벨 액세사리 헤어핀 알리스 (Alyth)', '[{"colorCode":"BL","colorName":"블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA16A3B2', '[화이트샌즈] 24SS 퍼플라벨 액세사리 스크런치 알리스 (Alyth)', '[{"colorCode":"BL","colorName":"블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA16A3B3', '[화이트샌즈] 24SS 퍼플라벨 액세사리 헤어밴드 알리스 (Alyth)', '[{"colorCode":"BL","colorName":"블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJA17A3B', '[화이트샌즈] 24SS 퍼플라벨 액세사리 SET  메이글 (Meigle)', '[{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA17A3B1', '[화이트샌즈] 24SS 퍼플라벨 액세사리 헤어핀  메이글 (Meigle)', '[{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA17A3B2', '[화이트샌즈] 24SS 퍼플라벨 액세사리 스크런치 메이글 (Meigle)', '[{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA17A3B3', '[화이트샌즈] 24SS 퍼플라벨 액세사리 헤어밴드 메이글 (Meigle)', '[{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJA18A3B', '[화이트샌즈] 24SS 퍼플라벨 액세사리 SET 카밀리 (Carmyllie)', '[{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA18A3B1', '[화이트샌즈] 24SS 퍼플라벨 액세사리 헤어핀 카밀리 (Carmyllie)', '[{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA18A3B2', '[화이트샌즈] 24SS 퍼플라벨 액세사리 스크런치 카밀리 (Carmyllie)', '[{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA18A3B3', '[화이트샌즈] 24SS 퍼플라벨 액세사리 헤어밴드 카밀리 (Carmyllie)', '[{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJA19A3B', '[화이트샌즈] 24SS 퍼플라벨 액세사리 SET 글라미 (Glamis)', '[{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA19A3B1', '[화이트샌즈] 24SS 퍼플라벨 액세사리 헤어핀 글라미 (Glamis)', '[{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA19A3B2', '[화이트샌즈] 24SS 퍼플라벨 액세사리 스크런치 글라미 (Glamis)', '[{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA19A3B3', '[화이트샌즈] 24SS 퍼플라벨 액세사리 헤어밴드 글라미 (Glamis)', '[{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJA20A3B', '[화이트샌즈] 24SS 퍼플라벨 액세사리 SET 포네스 (Forneth)', '[{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA20A3B1', '[화이트샌즈] 24SS 퍼플라벨 액세사리 헤어핀 포네스 (Forneth)', '[{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA20A3B2', '[화이트샌즈] 24SS 퍼플라벨 액세사리 스크런치 포네스 (Forneth)', '[{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA20A3B3', '[화이트샌즈] 24SS 퍼플라벨 액세사리 헤어밴드 포네스 (Forneth)', '[{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA21A3B', '[화이트샌즈] 24SS 퍼플라벨 액세사리 SET 핀캐슬 (Fincastle)', '[{"colorCode":"OR","colorName":"오렌지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA21A3B1', '[화이트샌즈] 24SS 퍼플라벨 액세사리 헤어핀 핀캐슬 (Fincastle)', '[{"colorCode":"OR","colorName":"오렌지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA21A3B2', '[화이트샌즈] 24SS 퍼플라벨 액세사리 스크런치 핀캐슬 (Fincastle)', '[{"colorCode":"OR","colorName":"오렌지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA21A3B3', '[화이트샌즈] 24SS 퍼플라벨 액세사리 헤어밴드 핀캐슬 (Fincastle)', '[{"colorCode":"OR","colorName":"오렌지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJA22A3B', '[화이트샌즈] 24SS 퍼플라벨 액세사리 SET 에얼리 (Airlie)', '[{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA22A3B1', '[화이트샌즈] 24SS 퍼플라벨 액세사리 헤어핀 에얼리 (Airlie)', '[{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA22A3B2', '[화이트샌즈] 24SS 퍼플라벨 액세사리 스크런치 에얼리 (Airlie)', '[{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA22A3B3', '[화이트샌즈] 24SS 퍼플라벨 액세사리 헤어밴드 에얼리 (Airlie)', '[{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJA23A3B', '[화이트샌즈] 24SS 퍼플라벨 액세사리 SET 페르싯 (Fersit)', '[{"colorCode":"GD","colorName":"골드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA23A3B1', '[화이트샌즈] 24SS 퍼플라벨 액세사리 헤어핀 페르싯 (Fersit)', '[{"colorCode":"GD","colorName":"골드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA23A3B2', '[화이트샌즈] 24SS 퍼플라벨 액세사리 스크런치 페르싯 (Fersit)', '[{"colorCode":"GD","colorName":"골드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA23A3B3', '[화이트샌즈] 24SS 퍼플라벨 액세사리 헤어밴드 페르싯 (Fersit)', '[{"colorCode":"GD","colorName":"골드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJA24A3B', '[화이트샌즈] 24SS 퍼플라벨 액세사리 SET 리소리 (Resourie)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA24A3B1', '[화이트샌즈] 24SS 퍼플라벨 액세사리 헤어핀 리소리 (Resourie)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA24A3B2', '[화이트샌즈] 24SS 퍼플라벨 액세사리 스크런치 리소리 (Resourie)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJA24A3B3', '[화이트샌즈] 24SS 퍼플라벨 액세사리 헤어밴드 리소리 (Resourie)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJA93C5D', '[화이트샌즈] 24SS 퍼플라벨 프레스코 디 라나 체크 볼캡 올슬리 (Allesley)', '[{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJA94K5D', '[화이트샌즈] 24SS 퍼플라벨 프레스코 디 라나 체크 버킷햇 알블리 (Alveley)', '[{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJA95C5D', '[화이트샌즈] 24SS 퍼플라벨 프레스코 디 라나 볼캡 텔퍼드 (Telford)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJA96K5D', '[화이트샌즈] 24SS 퍼플라벨 프레스코 디 라나 버킷햇 버비지 (Burbage)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJF1A3Z1', '[화이트샌즈 퍼플라벨] 24FW 퍼플라벨 체크면직 머리띠 아르타(Arta)', '[{"colorCode":"DGY","colorName":"다크그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJF1A3Z2', '[화이트샌즈 퍼플라벨] 24FW 퍼플라벨 체크면직 스크런치 율라라(Yulara)', '[{"colorCode":"DGY","colorName":"다크그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJF1A3Z3', '[화이트샌즈 퍼플라벨] 24FW 퍼플라벨 체크면직 리본핀(L) 에어즈(Ayers)', '[{"colorCode":"DGY","colorName":"다크그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJF1A3Z4', '[화이트샌즈 퍼플라벨] 24FW 퍼플라벨 체크면직 리본핀(M) 에린가(Eringa)', '[{"colorCode":"DGY","colorName":"다크그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJF2A9Z1', '[화이트샌즈 퍼플라벨] 24FW 퍼플라벨 탄탄체크 머리띠 마프라(Mafra)', '[{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJF2A9Z2', '[화이트샌즈 퍼플라벨] 24FW 퍼플라벨 탄탄체크 스크런치 메르니(Mereenie)', '[{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJF2A9Z3', '[화이트샌즈 퍼플라벨] 24FW 퍼플라벨 탄탄체크 리본핀(L) 미밀리(Mimili)', '[{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJF2A9Z4', '[화이트샌즈 퍼플라벨] 24FW 퍼플라벨 탄탄체크 리본핀(M) 마르리(Marree)', '[{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJF35H9L', '[화이트샌즈 퍼플] 24FW 퍼플라벨 후로피 자카드 햇 샹베리(Chambery)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJF36H9L', '[화이트샌즈_퍼플라벨] 24FW 후로피 자카드 절개라인햇 비엔느(Vienne)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJF38K9D', '[화이트샌즈 퍼플라벨] 24FW 퍼플라벨 벨벳 스트링 버킷햇 킴벌리(Kimberley)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJF3A5B1', '[화이트샌즈 퍼플라벨] 24FW 퍼플라벨 체크 머리띠 리에티(Rieti)', '[{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJF3A5B2', '[화이트샌즈 퍼플라벨] 24FW 퍼플라벨 체크 스크런치 리콜라(Licola)', '[{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJF3A5B3', '[화이트샌즈 퍼플라벨] 24FW 퍼플라벨 체크 리본핀(L) 릴리머(Lillimur)', '[{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJF3A5B4', '[화이트샌즈 퍼플라벨] 24FW 퍼플라벨 체크 리본핀(M) 로슬린(Roslyn)', '[{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJF3A5B5', '[화이트샌즈 퍼플라벨] 24FW 체크 리본핀 라머루(Lameroo)', '[{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJF40Z9Z', '[화이트샌즈_퍼플라벨] 24FW 퍼플라벨 벨벳 보닛햇 오클리(Oakley)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJF41H3Z', '[화이트샌즈_퍼플라벨] 24FW 퍼플라벨  버킷햇 오르시아(Orsia)', '[{"colorCode":"DGY","colorName":"다크그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJF5A9B1', '[화이트샌즈 퍼플라벨] 24FW 퍼플라벨 셔닐 자카드 리본핀 프레치(Preci)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PJF5A9B2', '[화이트샌즈 퍼플라벨] 24FW 퍼플라벨 셔닐 자카드 집게핀 포브스(Forbes)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJF90CD', '[화이트샌즈 퍼플라벨] 24FW 퍼플라벨 타탄체크볼캡 캠버웰(Camberwell)', '[{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJF91K9D', '[화이트샌즈 퍼플라벨] 24FW 퍼플라벨 타탄체크 버킷햇 애쉬번(Ashburn)', '[{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJF92B9D', '[화이트샌즈 퍼플라벨] 24FW 퍼플라벨  타탄체크 베레모 메릴본(Marylebone)', '[{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJF93Z3D', '[화이트샌즈 퍼플라벨] 24FW 퍼플라벨 체크 이어머프캡 린포드(Linford)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJF95I3D', '[화이트샌즈 퍼플라벨] 24FW 퍼플라벨 체크보닛햇 에블리(Aveley)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJS36I9T', '[화이트샌즈] 24SS 퍼플라벨 파리카 트위드 보닛햇 밸러어 (Ballagyr)', '[{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PJW37H7D', '[화이트샌즈_퍼플라벨] 24FW 퍼플라벨  벨벳  둥근 버킷햇 리버풀(Liverpool)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PKM10A9B', '[화이트샌즈_퍼플] 25SS 퍼플라벨 이태리 린넨코튼 스트라이프 반다나 헤어밴드 라리사', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PKM11A9B', '[화이트샌즈_퍼플] 25SS 퍼플라벨 이태리 린넨코튼 스트라이프 스크런치 페라라(Ferrara)', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PKM12A9B', '[화이트샌즈_퍼플] 25SS 퍼플라벨 이태리 린넨코튼 스트라이프 리본 스크런지 벨레스', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PKS03A3B', '[화이트샌즈_퍼플] 25SS 퍼플라벨 모던에트로체크 머리띠 테르니(Terni)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PKS04A3B', '[화이트샌즈_퍼플] 25SS 퍼플라벨 모던에트로 체크 스크런치 코자니', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PKS05A9B', '[화이트샌즈_퍼플] 25SS 퍼플라벨 이태리 버진울 머리띠 시에나(Siena)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'PKS06A9B', '[화이트샌즈_퍼플] 25SS 퍼플라벨 이태리버진울 리본핀 마라나(Marana)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PKS113A3Z', '[화이트샌즈_퍼플라벨] 25SS 퍼플라벨 이태리 린넨코튼 스트라이프 스카프 라벤나(Ravenna)', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PKS49H3Z', '[화이트샌즈 퍼플] 25SS 퍼플라벨 모던레트로 체크 와이어 보닛햇 셀비아', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PKS50H3Z', '[화이트샌즈 퍼플] 25SS 퍼플라벨 모던레트로 체크 숏 보닛햇 레노넬', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PKS54H9Z', '[화이트샌즈] 25SS 퍼플라벨 이태리 린넨코튼 프레피햇 네타냐(Netanya)', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PKS78I5V', '[화이트샌즈_퍼플라벨] 25SS 이탈리아 울 글렌체크 숏보닛햇 파올라(Paola)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'PKS79H5V', '[화이트샌즈_퍼플라벨] 25SS 이탈리아 울 글렌체크 라운드 버킷햇 바스토(Vasto)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'productrevise', '[화이트샌즈]상품조정', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'UnbalanceHatBODY', '(미사용)언밸런스햇 바디', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CH","colorName":"초코"},{"colorCode":"KBR","colorName":"카키 브라운"},{"colorCode":"MG","colorName":"멜란지 그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WAA01', '[화이트샌즈] 트윌리 스카프', '[{"colorCode":"NV","colorName":"네이비"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WAEM901B', '[화이트샌즈] 네오플랜 이너 패치', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WAEM901BBKX', '(미사용)네오플랜 이너 패치', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WAFA0A9Z', '헤드밴드', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WAFA1A9Z', '압력 분산 헤드밴드 3.0', '[{"colorCode":"CN","colorName":"투명"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WAGM0A8Z', '[화이트샌즈] TPU 카드 지갑', '[{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WAGW1A7D', '[화이트샌즈] 21FW 캐시미어 블렌디드 와플 숏 머플러', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"CM","colorName":"카멜"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"OT","colorName":"오트밀"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WAGW1A7H', '[화이트샌즈] 21FW 에코 퍼 부클 머플러', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WAGW2A7H', '[화이트샌즈] 21FW 에코 퍼 이어머프 캘러한(Callaghan)', '[{"colorCode":"AB","colorName":"애쉬 브라운 애쉬"},{"colorCode":"APK","colorName":"애쉬"},{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"LGN","colorName":"라이트 그린"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"SBL","colorName":"스카이블루"},{"colorCode":"SGN","colorName":"세이지 그린"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WAGW7A7H', '에코 퍼 부클 버킷햇 미사용', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WBGF0A5D', '[화이트샌즈] 21FW 울 니트 베레모', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"MU","colorName":"머스터드"},{"colorCode":"OT","colorName":"오트밀"},{"colorCode":"RD","colorName":"레드"},{"colorCode":"WI","colorName":"와인"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WBHW0A7K', '[화이트샌즈] 22FW 에코 퍼 베레모 안야', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WCFM1A4W', '[화이트샌즈] 22SS 내맘대로 썬캡 린넨 리버시블 카멜라', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"KBR","colorName":"카키 브라운"},{"colorCode":"LI","colorName":"라임"},{"colorCode":"RD","colorName":"레드"},{"colorCode":"SBL","colorName":"스카이블루"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WCFM1B4W', '[화이트샌즈] 22SS 내맘대로 썬캡 린넨 리버시블 릴리', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WCGF5A5D', '[화이트샌즈] 21FW 세일러 울 마도로스 캡', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WCGF7A3T', '[화이트샌즈] 21FW 코듀로이 로고 자수 볼캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"MU","colorName":"머스터드"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WCGM080D', '21SS [화이트샌즈] 라피아 리본캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WCGM081D', '21SS [화이트샌즈] 지사 볼캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CO","colorName":"코코아"},{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"OT","colorName":"오트밀"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WCGS753S', '★ [화이트샌즈] 왁스 코튼 가죽 패치 오버핏 볼캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WCGS763S', '★ [화이트샌즈] 왁스 코튼 메탈팁 오버핏 볼캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WCGW3A7T', '[화이트샌즈] 21FW 공용 양털 후리스 이어머프 캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"LV","colorName":"라벤더"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"SBL","colorName":"스카이블루"},{"colorCode":"TGN","colorName":"틸 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WCGW5A5H', '[화이트샌즈] 21FW 울 뉴스 보이캡', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"RD","colorName":"레드"},{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WCGW6A7D', '[화이트샌즈] 21FW 공용 헤링본 트위드 뉴스보이캡', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WCGW6B7D', '[화이트샌즈] 21FW 공용 양털 후리스 롱 이어머프 캡 구피', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WCHA7A3L', '[화이트샌즈] 22FW 공용 배색 로고 자수 볼캡 제리', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"RD","colorName":"레드"},{"colorCode":"TB","colorName":"티파니블루OR틸블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WCHA7B3L', '[화이트샌즈] 22FW 공용 배색 로고 자수 볼캡 알렉사', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LGN","colorName":"라이트 그린"},{"colorCode":"LV","colorName":"라벤더"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WCHA7C3L', '[화이트샌즈] 22FW 공용 레터링 로고 자수 볼캡 루카', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BPK","colorName":"베이비 핑크"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"LV","colorName":"라벤더"},{"colorCode":"SMB","colorName":"스모키 블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WCHM1A0O', '화이트샌즈 천연 라피아 와이드 린넨 캡 케일리', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"KBR","colorName":"카키 브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WCHM9A1P', '[화이트샌즈] 22SS 린넨 지사 썬캡 세나', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"KBR","colorName":"카키 브라운"},{"colorCode":"LI","colorName":"라임"},{"colorCode":"RD","colorName":"레드"},{"colorCode":"SBL","colorName":"스카이블루"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WCHW4A7V', '[화이트샌즈] 22FW 공용 코듀로이 후리스 이어머프 캡 코나', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BKB","colorName":"블랙에디션/올블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"RS","colorName":"로즈"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WCHW6A7H', '유디트 미사용', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"LV","colorName":"라벤더"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WCHW6A7K', '[화이트샌즈] 22FW 퀼티드 이어머프 캡 벨마', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WCHW7A7K', '[화이트샌즈] 22FW 부클 퍼 볼캡 할리', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GB","colorName":"골든브라운"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WDHF0A5B', '[화이트샌즈] 22FW 글렌체크 트위드 헤어밴드 테미스', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WDHF0A7B', '[화이트샌즈] 22FW 베이직 솔리드 헤어밴드 탈리아', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"DBR","colorName":"다크브라운"},{"colorCode":"FG","colorName":"포레스트 그린"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WDHF0A7N', '[화이트샌즈] 22FW 페이즐리 리본 헤어밴드 다이아나', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WDHF0A8B', '[화이트샌즈] 22FW 에코 레더 헤어밴드 마이아', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GPL","colorName":"그레이 플럼"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"TGN","colorName":"틸 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WDHF0A8N', '[화이트샌즈] 22FW 패딩 리본 헤어밴드 유나', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WDHF0B7N', '[화이트샌즈] 22FW 사틴 리본 헤어밴드 빅토리아', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WDHF0B8B', '[화이트샌즈] 22FW 벨벳 사틴 헤어밴드 모이라', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BGY","colorName":"블루"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BOD","colorName":"보르도"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"TB","colorName":"티파니블루OR틸블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WDHF0C7N', '[화이트샌즈] 22FW 러플 헤어밴드  헤스티아', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"KBR","colorName":"카키 브라운"},{"colorCode":"OR","colorName":"오렌지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WDHF0C8B', '[화이트샌즈] 22FW 스크런치 리본 헤어밴드 다프네', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"SBL","colorName":"스카이블루"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WDHF0D7N', '[화이트샌즈] 22FW 브레이디드 오간자 헤어밴드 미네르바', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WDHF0D8B', '[화이트샌즈] 22FW 진주 주름 헤어밴드 세멜레', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WDHF0E7N', '[화이트샌즈] 22FW 사틴 크로스 스트랩 헤어밴드 카밀라', '[{"colorCode":"BG","colorName":"버건디"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CM","colorName":"카멜"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WDHF0F7N', '[화이트샌즈] 22FW 코듀로이 트위스티드 헤어밴드 메디아', '[{"colorCode":"CA","colorName":"카라멜"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WDHF0G7N', '[화이트샌즈] 22FW 에코 레더 리본 헤어밴드 리코', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CR","colorName":"크림"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WDHF0H7N', '[화이트샌즈] 22FW 텍스쳐드 리본 헤어밴드 마리카', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CM","colorName":"카멜"},{"colorCode":"DBL","colorName":"다크블루"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WDHF0I7N', '[화이트샌즈] 22FW 사틴 반다나 헤어밴드  도리스', '[{"colorCode":"BG","colorName":"버건디"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WGMC210701', '(미사용)내맘대로 썬캡 린넨 리버시블 카멜라 (베이지/블랙)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHFM090TBODY', '(미사용)베라체 바디', '[{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHFW619D', '[화이트샌즈] 21FW 뉴 밍크 니트 보닛햇', '[{"colorCode":"BC","colorName":"브릭"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BG","colorName":"버건디"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"OT","colorName":"오트밀"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHFW629D', '[화이트샌즈] 21FW 뉴 라쿤 후리스 니트 보닛햇', '[{"colorCode":"BC","colorName":"브릭"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BG","colorName":"버건디"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"OT","colorName":"오트밀"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGA6A3T', '화이트샌즈 공용 왁스코튼 숏 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGA6B3T', '[화이트샌즈] 21FW 공용 포시즌 로고 자수  숏 버킷햇', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BPK","colorName":"베이비 핑크"},{"colorCode":"CE","colorName":"치즈"},{"colorCode":"DU","colorName":"더스트"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"RD","colorName":"레드"},{"colorCode":"SGN","colorName":"세이지 그린"},{"colorCode":"VL","colorName":"바이올렛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGF0A5D', '[화이트샌즈] 21FW 울 니트 클로슈 햇', '[{"colorCode":"BC","colorName":"브릭"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MU","colorName":"머스터드"},{"colorCode":"OT","colorName":"오트밀"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGF1B7L', '21FW 마들렌 와이드 스트링 버킷햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGF6A3L', '[화이트샌즈] 21FW 셔닐 트위드 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGF6A7L', '[화이트샌즈] 21FW 에스닉 니트 버킷햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"CL","colorName":"코랄"},{"colorCode":"OGN","colorName":"올리브(그린)"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGF8A5H', '[화이트샌즈] 21FW 울 펠트 컴포트햇', '[{"colorCode":"BC","colorName":"브릭"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CA","colorName":"카라멜"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"TGN","colorName":"틸 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGM104S', '[화이트샌즈] 마 블렌디드 보닛햇 뉴 케이티', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"CH","colorName":"초코"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"KBR","colorName":"카키 브라운"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"OR","colorName":"오렌지"},{"colorCode":"SBL","colorName":"스카이블루"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGM1A0J', '(미사용)[사용안함][화이트샌즈] 21SS 메이나', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGM1A1D', '[화이트샌즈] 21SS 지사 니트 보닛햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CM","colorName":"카멜"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGM500J', '[화이트샌즈] 21SS 천연 라피아 페도라 필립', '[{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGM5A4L', '[화이트샌즈] 21SS 린넨 버킷햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"LV","colorName":"라벤더"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"RD","colorName":"레드"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGM6A7L', '[화이트샌즈] 21SS 잔꽃 자수 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"PT","colorName":"피치"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGM6B3L', '[화이트샌즈] 21SS 엠보 스트라이프 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGM6C3L', '[화이트샌즈] 21SS 링클 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"PT","colorName":"피치"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS003D', '21SS [화이트샌즈] 코튼 스트랩 보닛햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MU","colorName":"머스터드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS0A1H', '[화이트샌즈] 21SS 레이스 리본 클로슈햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS1A1D', '21SS [화이트샌즈] 썸머 지사 보닛햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"SD","colorName":"샌드"},{"colorCode":"TU","colorName":"터콰이즈"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS1A3T', '21SS [화이트샌즈] 폼폼 보닛햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS1B3T', '21SS [화이트샌즈] 펀칭 레이스 보닛햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS1C3T', '21SS [화이트샌즈] 버블 레이스 보닛햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS1D3T', '[화이트샌즈] 폴딩 와이드 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS3A1D', '21SS [화이트샌즈] 네온 지사 플로피햇', '[{"colorCode":"NOY","colorName":"네온 옐로우"},{"colorCode":"NPK","colorName":"네온핑크"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS658H', '21SS [화이트샌즈] 브루클린 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"LV","colorName":"라벤더"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"SBL","colorName":"스카이블루"},{"colorCode":"SD","colorName":"샌드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS6A3T', '21SS [화이트샌즈] 타일 레이스 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS6A7T', '21SS [화이트샌즈] 플라워 자수 버킷햇', '[{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS6B3T', '21SS [화이트샌즈] 폼폼 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS6B7T', '21SS [화이트샌즈] 나빌레라 버킷햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS6C3T', '21SS [화이트샌즈] 펀칭 레이스 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS6D3T', '화이트샌즈 공용 왁스 코튼 스트링 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS7A1D', '21SS [화이트샌즈] 뒷트임 투톤 벙거지', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS8A1D', '21SS [화이트샌즈] 리본 지사 클로슈햇', '[{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS8A3T', '화이트샌즈 왁스 코튼 사파리햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS9A0D', '21SS [화이트샌즈] 코튼 라피아 클로슈햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CO","colorName":"코코아"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS9A1D', '21SS [화이트샌즈] 린넨 지사 클로슈햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS9A3D', '21SS [화이트샌즈] 컬러 워싱 버킷햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS9A7T', '21SS [화이트샌즈] 체크 리버시블 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"RD","colorName":"레드"},{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS9B1D', '21SS [화이트샌즈] 스트링 지사 보닛햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS9B3T', '21SS [화이트샌즈] 체리 리버시블 버킷햇', '[{"colorCode":"NV","colorName":"네이비"},{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGS9C3T', '21SS [화이트샌즈] 페이즐리 리버시블 버킷햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW0A5D', '[화이트샌즈] 21FW 백포인트 보닛햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"CC","colorName":"챠콜"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW0A7D', '[화이트샌즈] 21FW 다이아 퀼팅 스트랩 보닛햇', '[{"colorCode":"BR","colorName":"브라운"},{"colorCode":"IBK","colorName":"잉크블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW0A8D', '[화이트샌즈] 21FW 롤리팝 니트 컴포트햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BGY","colorName":"블루"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"OGN","colorName":"올리브(그린)"},{"colorCode":"OR","colorName":"오렌지"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"TB","colorName":"티파니블루OR틸블루"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW0A9A', '[화이트샌즈] 21FW 캐시미어 니트 컴포트햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"CA","colorName":"카라멜"},{"colorCode":"MG","colorName":"멜란지 그레이"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW0B5D', '[화이트샌즈] 21FW 스트랩 울 니트 보닛햇', '[{"colorCode":"BR","colorName":"브라운"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"MBK","colorName":"멜란지블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW0B7D', '[화이트샌즈] 21FW 양털 후리스 스트랩 후디', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW0B8D', '[화이트샌즈] 21FW 듄듄 니트 컴포트햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW0C5D', '[화이트샌즈] 21FW 아가일 체크 니트 컴포트 햇', '[{"colorCode":"BC","colorName":"브릭"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"CH","colorName":"초코"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW0D5D', '[화이트샌즈] 21FW 공용 울 블렌디드 니트 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MC","colorName":"모카"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW0E5D', '[화이트샌즈] 21FW 스트라이프 배색 울 니트 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"OT","colorName":"오트밀"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW0F5D', '[화이트샌즈] 21FW 울 니트 보닛햇 미키', '[{"colorCode":"BC","colorName":"브릭"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"MBK","colorName":"멜란지블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW0G5D', '[화이트샌즈] 21FW 공용 울 니트 바라클라바 도디', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MC","colorName":"모카"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW0R5D', '[화이트샌즈] 21FW 공용 리버시블 울 배색 버킷햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"MC","colorName":"모카"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW1A7H', '(미사용)에코 퍼 부클 머플러 미사용', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW1A7T', '[화이트샌즈] 21FW 뉴 양털 후리스 보닛햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"CA","colorName":"카라멜"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW1B7R', '[화이트샌즈] 21FW 플러피 보닛햇 샤샤', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW5A7F', '[화이트샌즈] 21FW 공용 폴라플리스 스노우 버킷햇', '[{"colorCode":"BC","colorName":"브릭"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"FSA","colorName":"푸시아 핑크"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"TGN","colorName":"틸 그린"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WHGW5A9D', '[화이트샌즈] 21FW 헤어리 앙고라 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MC","colorName":"모카"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW5B5D', '[화이트샌즈] 21FW 공용 쿠키 니트 버킷햇(블랙단종)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW5B7F', '[화이트샌즈] 21FW 공용 폴라플리스 스트링 버킷햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CA","colorName":"카라멜"},{"colorCode":"LV","colorName":"라벤더"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"RD","colorName":"레드"},{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW6A3Z', '[화이트샌즈] 21FW 공용 코듀로이 이어머프 버킷햇 써니', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"RD","colorName":"레드"},{"colorCode":"SBL","colorName":"스카이블루"},{"colorCode":"TB","colorName":"티파니블루OR틸블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW6A5D', '[화이트샌즈] 21FW 울 체크 배색 버킷햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW6A5H', '[화이트샌즈] 21FW 109L 언밸런스 클로슈햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CH","colorName":"초코"},{"colorCode":"KBR","colorName":"카키 브라운"},{"colorCode":"MG","colorName":"멜란지 그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW6A7D', '[화이트샌즈] 21FW 부클 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MC","colorName":"모카"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW6C7D', '[화이트샌즈] 21FW 퍼 스트라이프 버킷햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW6D3D', '[화이트샌즈] 21FW 지브라 자카드 버킷햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW7A7D', '[화이트샌즈] 21FW 튤립 니트 컴포트햇', '[{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"LV","colorName":"라벤더"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHGW7A7H', '[화이트샌즈] 21FW 에코 퍼 부클 버킷햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WHGW7B7D', '[화이트샌즈] 21FW 헤어리 이삭 버킷햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"CR","colorName":"크림"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHA6A3T', '[화이트샌즈] 22SS 공용 포시즌 데일리 숏 버킷햇 블랙', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHA7A3T', '[화이트샌즈] 22SS 공용 빈티지 워싱 버킷햇 대니', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DU","colorName":"더스트"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"PP","colorName":"퍼플"},{"colorCode":"RD","colorName":"레드"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHA8A3T', '화이트샌즈 22SS 오버핏 빈티지 워싱 버킷햇 미스터빅', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CL","colorName":"코랄"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHF5B7T', '[화이트샌즈] 22FW 부클 자수 버킷햇 캘리', '[{"colorCode":"BGY","colorName":"블루"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GB","colorName":"골든브라운"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"LV","colorName":"라벤더"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHF6A3T', '[화이트샌즈] 22FW 골지 자수 버킷햇 재키', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHF6A7T', '[화이트샌즈] 22FW 공용 잔골지 버킷햇 테드', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DGN","colorName":"다크그린"},{"colorCode":"GB","colorName":"골든브라운"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"SST","colorName":"선셋"},{"colorCode":"TB","colorName":"티파니블루OR틸블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHM1A0H', '화이트샌즈 22SS 천연 라피아 클로슈햇 브리아나', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"JD","colorName":"제이드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHM1A1H', '[화이트샌즈] 22SS 와이드 지사 리본 클로슈 햇 테레사', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHM1A4S', '[화이트샌즈] 22SS 린넨 보닛햇 루시', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BBL","colorName":"베이비 블루"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"LI","colorName":"라임"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"SO","colorName":"소라"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHM1B1H', '화이트샌즈 22SS 지사 와이드 캡 에밀리', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DBR","colorName":"다크브라운"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHM5A1H', '[화이트샌즈] 22SS 지사 배색 리본 클로슈햇 하이디', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHM6A1K', '화이트샌즈 22SS 지사 플랫 버킷햇 노아', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"BPK","colorName":"베이비 핑크"},{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHM6A4S', '[화이트샌즈] 22SS 린넨 롤업 버킷햇 데니스', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"KBR","colorName":"카키 브라운"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"RD","colorName":"레드"},{"colorCode":"SBL","colorName":"스카이블루"},{"colorCode":"SGN","colorName":"세이지 그린"},{"colorCode":"TGN","colorName":"틸 그린"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHM6B1K', '화이트샌즈 22SS 지사 라운드 버킷햇 노엘', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CO","colorName":"코코아"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHM7A1H', '화이트샌즈 22SS 지사 리본 클로슈햇 세레나', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GB","colorName":"골든브라운"},{"colorCode":"RS","colorName":"로즈"},{"colorCode":"SMB","colorName":"스모키 블루"},{"colorCode":"TP","colorName":"토프"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHM7B1H', '화이트샌즈 22SS 프리미엄 지사 리본 클로슈햇  메이벨', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"OT","colorName":"오트밀"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHM8A0J', '[화이트샌즈] 22SS 천연 라피아 리본 클로슈햇 소피', '[{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHM8A1D', '화이트샌즈 22SS 지사 언밸런스 클로슈햇 이네스', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHM8A1H', '[화이트샌즈] 22SS 지사 레이스 리본 플로피햇 샬롯', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHM8B0J', '[화이트샌트] 22SS 천연 라피아 클로슈햇 리타', '[{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHM8C0J', '(미사용)화이트샌즈 22SS 천연 라피아 클로슈햇 마리아', '[{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHM8D0J', '화이트샌즈 22SS 천연 라피아 클로슈햇 실비', '[{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHM9A1H', '[화이트샌즈] 22SS 지사 리본 클로슈 햇 에이미', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHS0A8D', '[화이트샌즈] 22SS 린넨 블렌디드 니트 보닛햇 미니', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"CA","colorName":"카라멜"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"OT","colorName":"오트밀"},{"colorCode":"RS","colorName":"로즈"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHS0B1D', '화이트샌즈 22SS 지사 텍스쳐드 스트링 보닛햇 오드리', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CA","colorName":"카라멜"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MS","colorName":"모스(그린)"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"RS","colorName":"로즈"},{"colorCode":"TB","colorName":"티파니블루OR틸블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHS1A4D', '[화이트샌즈] 22SS 린넨 와이드 스트링 플로피햇 노라', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"SD","colorName":"샌드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHS5A8T', '화이트샌즈 22SS 이리디센트 숏 버킷햇 유니콘', '[{"colorCode":"NGR","colorName":"네온그린"},{"colorCode":"NOR","colorName":"네온오렌지"},{"colorCode":"ORR","colorName":"오로라"},{"colorCode":"PRL","colorName":"진주"},{"colorCode":"SST","colorName":"선셋"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHS5B8T', '화이트샌즈 22SS 메탈릭 타이벡 숏버킷햇 미르', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GD","colorName":"골드"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"SV","colorName":"실버"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHS6A3D', '화이트샌즈 코튼 뒷밴딩 보닛햇 안젤라', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"LV","colorName":"라벤더"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHS6A3K', '화이트샌즈 22SS 파우더 코튼 버킷햇 블레어', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"SD","colorName":"샌드"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHS6A3T', '화이트샌즈 22SS 데님 하운드투스 버킷햇 지나', '[{"colorCode":"LBL","colorName":"연청/라이트 블루"},{"colorCode":"MBL","colorName":"중청/미들 블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHS6A4T', '화이트샌즈 22SS 공용 린넨 숏버킷햇 제이미', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"CC","colorName":"챠콜"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHS6B3T', '화이트샌즈 22SS 데님 청키 숏 버킷햇 제시', '[{"colorCode":"LBL","colorName":"연청/라이트 블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHS7A3D', '[화이트샌즈] 22SS 스트라이프 시어서커 버킷햇 엘리', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHS7A7D', '화이트샌즈 22SS 플라워 아플리케 메쉬 버킷햇 플로라', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHS7B1D', '화이트샌즈 22SS 린넨 블렌디드 지사 언밸런스드 버킷햇 이디스', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"OT","colorName":"오트밀"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHS9A3D', '[화이트샌즈] 22SS 코튼 스트링 보닛햇 엠마', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"OT","colorName":"오트밀"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHS9A3K', '[화이트샌즈] 22SS 파우더 코튼 언밸런스 플로피햇 크리스티', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"SD","colorName":"샌드"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHS9A4S', '[화이트샌즈] 22SS 린넨 블렌디드 슬럽 버킷햇 리나', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"OT","colorName":"오트밀"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW0A5D', '[화이트샌즈] 22FW 울 블렌디드 플레인 버킷햇 애니', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"GB","colorName":"골든브라운"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"OT","colorName":"오트밀"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW0A5K', '[화이트샌즈] 22FW 배색 니트 버킷햇 카렌', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW0A7K', '[화이트샌즈] 22FW 뉴 뽀송뽀송햇', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GB","colorName":"골든브라운"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW0A8H', '[화이트샌즈] 22FW 니트 바라클라바 클라라', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"LV","colorName":"라벤더"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"OT","colorName":"오트밀"},{"colorCode":"RD","colorName":"레드"},{"colorCode":"TB","colorName":"티파니블루OR틸블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW0A9D', '[화이트샌즈] 22FW 앙고라 니트 숏버킷햇 니나', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"OT","colorName":"오트밀"},{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW0B5D', '[화이트샌즈] 22FW 울 블렌디드 폼폼 버킷햇 버디', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MC","colorName":"모카"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW0B8H', '[화이트샌즈] 22FW 니트 스트링 보닛햇 브라우니', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"OT","colorName":"오트밀"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW0C5D', '[화이트샌즈] 22FW 울 블렌디드 립 버킷햇 아니카', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DBR","colorName":"다크브라운"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"MU","colorName":"머스터드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW0D5D', '[화이트샌즈] 22FW 브레이디드 니트 버킷햇 코라', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW0E5D', '[화이트샌즈] 22FW 울 블렌디드 스트랩 보닛햇 미아', '[{"colorCode":"BR","colorName":"브라운"},{"colorCode":"CA","colorName":"카라멜"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW5A3K', '[화이트샌즈] 22FW 코듀로이 퍼 밴딩 버킷햇 올가', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GB","colorName":"골든브라운"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"TGN","colorName":"틸 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WHHW5A7T', '[화이트샌즈] 22FW 헤어리 버킷햇 베일리', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW5B7T', '[화이트샌즈] 22FW 에코 퍼 버킷햇 슈가', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"MC","colorName":"모카"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW5C7T', '[화이트샌즈] 22FW 플리스 자수 버킷햇 우디', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"KBR","colorName":"카키 브라운"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"TB","colorName":"티파니블루OR틸블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW6A6H', '(미사용)미사용', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BPK","colorName":"베이비 핑크"},{"colorCode":"DBR","colorName":"다크브라운"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"OT","colorName":"오트밀"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW6A7H', '[화이트샌즈] 22FW 공용 에코 퍼 트루퍼햇 유디트', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"LV","colorName":"라벤더"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW6A7T', '[화이트샌즈] 22FW 체크 플리스 버킷햇 마랑', '[{"colorCode":"BGY","colorName":"블루"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW6A7V', '[화이트샌즈] 공용 후리스 이어머프 버킷햇 스카디(Skadi)', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MC","colorName":"모카"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW6A7Z', '[화이트샌즈] 22FW 스웨이드 체크 배색 버킷햇 리피', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW6B7T', '[화이트샌즈] 22FW 체크 패딩 버킷햇 에밀', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW7A7K', '[화이트샌즈] 22FW 패딩 퍼 배색 버킷햇 하퍼', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW7A7T', '[화이트샌즈] 22FW 양털 후리스 보닛햇 몰리', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW8A7H', '[화이트샌즈] 22FW 패딩 버킷햇 클라우디', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CR","colorName":"크림"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHHW9A7T', '[화이트샌즈] 22FW 와이드 누빔 버킷햇 샐리', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BKB","colorName":"블랙에디션/올블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"MU","colorName":"머스터드"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHIM100M', '[화이트샌즈] 23SS 언발란스 브림 천연 라피아햇 메이나', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHIM1A0M', '[화이트샌즈] 23SS 천연 라피아 드루핑 선바이저 멜리사', '[{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHIS1A1M', '[화이트샌즈] 23SS 와이드 지사 리본 클로슈햇 멜리나', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHIW6A6H', '[화이트샌즈] 23FW 울 펠트 트루퍼햇 구스', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BPK","colorName":"베이비 핑크"},{"colorCode":"DBR","colorName":"다크브라운"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"OT","colorName":"오트밀"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WHPA354E', '(미사용)코튼 더스트백', '[{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIA04K3T', '[화이트샌즈] 23SS 코튼 언밸런스 플로피햇 렌디', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BPK","colorName":"베이비 핑크"},{"colorCode":"CE","colorName":"치즈"},{"colorCode":"DU","colorName":"더스트"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"RD","colorName":"레드"},{"colorCode":"SGN","colorName":"세이지 그린"},{"colorCode":"VL","colorName":"바이올렛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WIA10A8B', 'TGR 스티치 스크런치 그레이스(Grace)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WIA11A8B', '[화이트샌즈]23SS TGR 리본 스크런치 레올라(Leola)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WIA13P3Z', '[화이트샌즈] 23SS 테리 포켓 버킷햇 타롤라_파우치', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"CL","colorName":"코랄"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIA19K8M', '[화이트샌즈] 24SS 리사이클 스트링 버킷햇 웨이드 (Wade)', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIA55I3M', '[화이트샌즈] 23SS 포시즌 베이직 보닛햇 데미안', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CL","colorName":"코랄"},{"colorCode":"DU","colorName":"더스트"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIA61K3T', '[화이트샌즈] 23SS 공용 포시즌 데일리 숏 버킷햇 아이보리', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIA62K7T', '[화이트샌즈] 23SS 공용 리사이클 스트링 버킷햇 로이', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIA62N9Z', '[화이트샌즈] 23FW 화이트샌즈 데일리 롱 비니 건터스 (Gunters)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIA63K7T', '[화이트샌즈] 23SS 공용 리사이클 사파리햇 레사', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIA63N9Z', '[화이트샌즈] 23FW 화이트샌즈 데일리 숏 비니 에어리 (Airy)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIA65C3L', '[화이트샌즈] 23SS 공용 코튼 베이직 볼캡 제리나', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"HPK","colorName":"핫핑크"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIA6AK3T', '[화이트샌즈] 23SS 공용 포시즌 데일리 숏 버킷햇 애쉬', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIA77K3T', '[화이트샌즈] 23SS 테리 포켓 버킷햇 타롤라', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"CL","colorName":"코랄"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIA81K3T', '[화이트샌즈] 23SS 코튼 버킷햇 아니타', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BPK","colorName":"베이비 핑크"},{"colorCode":"CR","colorName":"크림"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"SD","colorName":"샌드"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIA84K3K', '[화이트샌즈] 23SS 피그먼트 투웨이 스트링 버킷햇 마가렛', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"ID","colorName":"인디고"},{"colorCode":"VL","colorName":"바이올렛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIA85I3K', '[화이트샌즈] 23SS 피그먼트 투웨이 스트링 보닛햇 에리카', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BRE","colorName":"브릭 레드"},{"colorCode":"MU","colorName":"머스터드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIA87K3M', '[화이트샌즈] 23SS 화이트샌즈 시그니처 코튼 버킷햇', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CL","colorName":"코랄"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF121H5Z', '[화이트샌즈] 24FW 뽀송 울 니트 버킷햇 라로셸(La Rochelle)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DGY","colorName":"다크그레이"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"VL","colorName":"바이올렛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF13H5Z', '[화이트샌즈] 23FW 뽀송 울 니트 버킷햇 달스턴 (Dalston)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF15I3M', '[화이트샌즈] 23FW 코튼 보닛햇 카이걸 (Kaigal)', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"DGN","colorName":"다크그린"},{"colorCode":"DU","colorName":"더스트"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF16H3M', '[화이트샌즈] 23FW 코튼 언밸런스 플로피햇 그레이시 (Gracie)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DGN","colorName":"다크그린"},{"colorCode":"DU","colorName":"더스트"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF21B3T', '[화이트샌즈] 23FW 엔틱버클 코튼기모 베레모 에스텔', '[{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF23T3M', '[화이트샌즈] 23FW 코듀로이 트루퍼햇 샌디베이', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"DGN","colorName":"다크그린"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF27B8M', '[화이트샌즈] 23FW 니트 베레모 호브로', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF30K7L', '[화이트샌즈] 23FW 플레어 버킷햇 웨이첼', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF31K7T', '[화이트샌즈] 23FW 헤링본 코듀로이 자수 버킷햇 로렌스 (Lawrence)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF31T7M', '[화이트샌즈] 23FW 이어플랩 와이드 볼캡 허치머 (Herchmer)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF34C3T', '[화이트샌즈] 23FW 엔틱 버클 코튼 기모 마도로스캡 오데사 (Odessa)', '[{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF37C5Z', '[화이트샌즈] 23FW 모던 클로슈 햇 309 브레머 (Braemar)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF38S5Z', '[화이트샌즈] 23FW 모던 클로슈 햇 109 크레디 (Crathie)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF39H5Z', '[화이트샌즈] 23FW 모던 클로슈 햇 050 애보인 (Aboyne)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"KBR","colorName":"카키 브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF42H9Z', '[화이트샌즈] 23FW 플로우 라인 배색 니트 버킷햇 피터리 (Peterlee)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF43C3M', '[화이트샌즈] 23FW 코듀로이 마도로스캡 베인빌 (Bainville)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"DGN","colorName":"다크그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF45H7Z', '[화이트샌즈] 23FW 브릴리언트 니트 보닛햇 킹스린 (King''s Lynn)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CLB","colorName":"클라우드블루"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"LI","colorName":"라임"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF46I9Z', '[화이트샌즈] 23FW 테슬 니트 보닛햇 소리스 (Souris)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MC","colorName":"모카"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF48I7T', '[화이트샌즈] 23FW 다이애그널 보닛햇 페어뷰 (Fairview)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF49K7L', '[화이트샌즈] 23FW 플레어 버킷햇 론메이 (Lonmay)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF50H5Z', '[화이트샌즈] 23FW 울 니트 보닛햇 볼드린 (Baldrine)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF52H5Y', '[화이트샌즈] 23FW 언밸런스 클로슈 햇 요크셔 (바디)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF54C7T', '[화이트샌즈] 23FW 앤틱 버튼 헤링본 마도로스캡 뉴어크 (Newark)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF59H7Z', '[화이트샌즈] 23FW 소프트 페더 니트 버킷햇 키치너(Kitchener)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DB","colorName":"딥블루"},{"colorCode":"MIG","colorName":"민트그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF69I5Z', '[화이트샌즈] 23FW 울 블렌디드 개더 보닛햇  프로펫 (Prophet)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"OT","colorName":"오트밀"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF71H5Y', '[화이트샌즈] 23FW 언밸런스 클로슈 햇 셰필드 (Sheffield)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF72K7Q', '[화이트샌즈] 23FW 브릴리언트 코듀로이 버킷햇 풀러턴 (Fullerton)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"OGN","colorName":"올리브(그린)"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIF73S5Y', '[화이트샌즈] 23FW 모던 클로슈 햇 사틴 109L 크림베이지', '[{"colorCode":"GD","colorName":"골드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WIM01D9B', '[화이트샌즈] 23SS 링클 반다나 헤어밴드 안젤리나', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"SM","colorName":"살몬"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WIM02D9B', '[화이트샌즈] 23SS 롤리 헤어밴드 글렌다', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"FG","colorName":"포레스트 그린"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"VL","colorName":"바이올렛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WIM03D9B', '[화이트샌즈] 23SS 스케이프 헤어밴드 수산나', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WIM04A9B', '[화이트샌즈] 23SS 링클 팬던트 스크런치 아이린', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"FG","colorName":"포레스트 그린"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"VL","colorName":"바이올렛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WIM05A3B', '[화이트샌즈] 23SS 코튼 패턴 스크런치 케이트', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"OR","colorName":"오렌지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WIM06A3B', '[화이트샌즈] 23SS 테리 오가닉라벨 스크런치 티나', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"CL","colorName":"코랄"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM08Z3Z', '[화이트샌즈]23SS오가닉 비치타월 화이트헤이븐', '[{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WIM09D3Z', '[화이트샌즈] 23SS 테리 라벨 헤어밴드 킨티아(Cynthia)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"CL","colorName":"코랄"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM32H1M', '[화이트샌즈] 23SS 지사 버킷햇 시아', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM34X2M', '[화이트샌즈] 23SS 천연 왕골 보터햇 프리셀라', '[{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM39H0M', '[화이트샌즈] 23SS 천연 라피아 클로슈햇 로렌 (바디)', '[{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM41H1H', '[화이트샌즈] 23SS 리본 지사 버킷햇 로제', '[{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM42K0M', '[화이트샌즈] 24SS 천연 라피아 버킷햇 델리', '[{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM44H0V', '[화이트샌즈] 23SS 리본 라피아햇 마리나', '[{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM45H0V', '[화이트샌즈] 23SS 사틴 스트랩 라피아햇 쉐리', '[{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM46H0V', '[화이트샌즈] 23SS 스트랩 라피아햇 마리아', '[{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WIM51V3W', '[화이트샌즈] 23SS 내맘대로 썬캡 리버시블 페넬로피 베이지 밴드', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CL","colorName":"코랄"},{"colorCode":"LV","colorName":"라벤더"},{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WIM52V3W', '[화이트샌즈] 23SS 내맘대로 썬캡 리버시블 데이지 베이지 밴드', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"BRE","colorName":"브릭 레드"},{"colorCode":"JD","colorName":"제이드"},{"colorCode":"LV","colorName":"라벤더"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM53K1M', '[화이트샌즈] 23SS 지사 버킷햇 레아', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM54I7M', '[화이트샌즈] 23SS 스트링 보닛햇 앤시', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM56H9Z', '[화이트샌즈] 23SS 공용 배색 숏 버킷햇 브렌다', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM57H9Z', '[화이트샌즈] 23SS 지사 니트 버킷햇 하젤', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"NRD","colorName":"내츄럴 레드"},{"colorCode":"OT","colorName":"오트밀"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM58C9Z', '[화이트샌즈] 23SS 리본 지사 볼캡 레노라', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM65N1Q', '[화이트샌즈] 23SS 코튼 지사 블렌디드 벙거지 리디아', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM66H1M', '[화이트샌즈] 23SS 지사 언밸런스 플로피햇 로라', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM69V9O', '[화이트샌즈] 내맘대로 썬캡 뉴 PK 리버시블 카멜라 챠콜', '[{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM69V9Z', '[화이트샌즈] 내맘대로 썬캡 뉴 PK 리버시블 카멜라 화이트', '[{"colorCode":"CL","colorName":"코랄"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM70H9Z', '[화이트샌즈] 23SS 라피아 클로슈햇 블루디', '[{"colorCode":"BL","colorName":"블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM74I1Z', '[화이트샌즈] 23SS 지사 투톤 스트링 보닛햇 샤이나', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM75H0W', '[화이트샌즈] 23SS 천연 라피아 클로슈햇 보니', '[{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM76H4M', '[화이트샌즈] 23SS 마 블렌디드 언밸런스 플로피햇 로슬라 (Roslla)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"KBR","colorName":"카키 브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM78H3T', '[화이트 샌즈] 23SS 코튼 패턴 플로피햇 홀리데이', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"OR","colorName":"오렌지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM80H0M', '[화이트샌즈] 24SS 천연 라피아 클로슈햇 로사체', '[{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM83H0M', '[화이트샌즈] 24SS 스트랩 라피아햇 다이앤', '[{"colorCode":"GN","colorName":"그린"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM86H3Z', '[화이트샌즈] 23SS 코튼 스트링 보닛햇 아이다', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CL","colorName":"코랄"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM89H8T', '[화이트샌즈]23SS 아쿠아가드 언밸런스 레인햇 미카엘', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"SGN","colorName":"세이지 그린"},{"colorCode":"VL","colorName":"바이올렛"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM90H7T', '[화이트샌즈]23SS 아쿠아가드 UV차단 레인햇 잉그리드', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BGY","colorName":"블루"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"LGY","colorName":"라이트그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM91H8T', '[화이트샌즈]23SS 나일론 트윌 아웃도어 햇 베키', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"FG","colorName":"포레스트 그린"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"SM","colorName":"살몬"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIM93V3Z', '[화이트샌즈] 23SS 내맘대로 썬캡 리버시블 체크 뉴 제니', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIS30H4K', '[화이트샌즈] 23SS 린넨 스트링 버킷햇 제인', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BPK","colorName":"베이비 핑크"},{"colorCode":"SD","colorName":"샌드"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIS67H9Q', '[화이트샌즈] 23SS 코튼 지사 블렌디드 벙거지 나르샤', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WIW13A5B', '[화이트샌즈] 23FW 울 헤어밴드 산네스 (Sandnes)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIW18A8M', '[화이트샌즈] 23FW 코듀로이 에코 퍼 이어머프 설리번 (Sullivan)', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"DGN","colorName":"다크그린"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PP","colorName":"퍼플"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIW20C7M', '[화이트샌즈] 23FW 코듀로이 볼캡 이그나스', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIW22T7M', '[화이트샌즈] 23FW 스퀘어 퀼팅 트루퍼햇 비보르 (Viborg)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIW28T7M', '[화이트샌즈] 23FW 멜란지 트루퍼햇 페리빌 (Perryville)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIW32K7T', '[화이트샌즈] 23FW 플로우 퍼 자수 버킷햇  트위그 (Twig)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIW33T7M', '[화이트샌즈] 23FW 헤링본 라벨 트루퍼햇 톰베이 (ThomBay)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIW36I7T', '[화이트샌즈] 23FW 플러피 보닛햇 뉴 샤샤(New Sha sha)', '[{"colorCode":"AB","colorName":"애쉬 브라운 애쉬"},{"colorCode":"BC","colorName":"브릭"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"DGY","colorName":"다크그레이"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIW40I8M', '[화이트샌즈] 23FW 니트 이어머프 반다나 포레스 (Forres)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIW41T9M', '[화이트샌즈] 23FW 니트 트루퍼햇 크로비 (Crovie)', '[{"colorCode":"BB","colorName":"블루베리"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"LY","colorName":"레몬 옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIW44I7M', '[화이트샌즈] 23FW 숏 에코 퍼 보닛햇 모나카 (Monaca)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"OGN","colorName":"올리브(그린)"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIW47I8Q', '[화이트샌즈] 2023FW 니트 트루퍼 비니 헤이스(Hays)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIW51T3M', '[화이트샌즈] 23FW 코듀로이 트루퍼햇 아이나르 (Einar)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIW53I8C', '[화이트샌즈] 23FW 니트 스트링 보닛햇 메리몬 (Merrimon)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIW56K3M', '[화이트샌즈] 23FW 버티컬 라인 패딩 버킷햇 아로나(Arona)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIW57K3M', '[화이트샌즈] 23FW 코듀로이 이어머프 버킷햇 먼스터(Munster)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DGN","colorName":"다크그린"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIW58T7M', '[화이트샌즈] 23FW 코듀로이 숏 후리스 이어머프 캡 하코트 (Harcourt)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"DGN","colorName":"다크그린"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"LPP","colorName":"라이트 퍼플"},{"colorCode":"MC","colorName":"모카"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIW60H9Z', '[화이트샌즈] 23FW 앙고라 버킷햇 베이시 (Vasey)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CL","colorName":"코랄"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIW64N5Z', '[화이트샌즈] 23FW 울 블렌디드 리사이클 비니 허미니 (Herminie)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WIW68K8M', '[화이트샌즈] 23FW 헤어 울 블렌디드 이어머프 버킷햇 맥레이 (McRae)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIW70H5M', '[화이트샌즈] 23FW 울 니트 바라클라바 엘레나 (Elena)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DGN","colorName":"다크그린"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIW74T3M', '[화이트샌즈] 23FW 코듀로이 후리스 배색 이어머프 캡 뉴할렌 (Newhalen)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CG","colorName":"컨트리그린"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIW75T8M', '[화이트샌즈] 23FW 리버시블 후리스 트루퍼햇 키루나 (Kiruna)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WIW7T8M', '[화이트샌즈] 23FW 버티컬 라인 패딩 트루퍼 햇 슬라나(Slana)', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJA08I8M', '[화이트샌즈] 24SS 아쿠아가드 보닛햇 듀리에 (Dewlieh)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"SGN","colorName":"세이지 그린"},{"colorCode":"VL","colorName":"바이올렛"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJA100Z9Z', '[화이트샌즈] 24SS 스포츠 파일 양말 바나비 (Banavie)', '[{"colorCode":"GN","colorName":"그린"},{"colorCode":"MU","colorName":"머스터드"},{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJA101Z9Z', '[화이트샌즈] 24SS 스포츠 파일 양말 디캐슬 (Deecastle)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJA13J8D', '[화이트샌즈] 24SS 아쿠아가드 캠프캡 그로토 (Grotto)', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJA17K3M', '[화이트샌즈] 24SS 코튼 버킷햇 케레마 (Kerema)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"LBL","colorName":"연청/라이트 블루"},{"colorCode":"LPP","colorName":"라이트 퍼플"},{"colorCode":"SD","colorName":"샌드"},{"colorCode":"ST","colorName":"스트라이프"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJA21I3M', '[화이트샌즈] 24SS 코튼 보닛햇 벨포드 (Belford)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CR","colorName":"크림"},{"colorCode":"DB","colorName":"딥블루"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"LOR","colorName":"라이트오렌지"},{"colorCode":"SD","colorName":"샌드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJA39I3T', '[화이트샌즈] 24SS 테리 보닛햇 소렌토 (Sorento)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJA42H7L', '[화이트샌즈] 24SS 리버시블 베이직 버킷햇 벨린터 (Bellinter)', '[{"colorCode":"BAB","colorName":"블랙"},{"colorCode":"CAB","colorName":"베이지 챠콜 버건디"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJA49C3D', '[화이트샌즈] 24SS 화이트샌즈 바논 (Bar None) 볼캡', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJA50K3D', '[화이트샌즈] 24SS 화이트샌즈 바논 (Bar None) 버킷햇', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJA86V0M', '[화이트샌즈] 24SS 지사 썬캡 세리스 (Seris)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJA97C3T', '[화이트샌즈] 24SS 화이트샌즈 시그니처 볼캡 코바다 (Cobbadah)', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BPK","colorName":"베이비 핑크"},{"colorCode":"CE","colorName":"치즈"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"RD","colorName":"레드"},{"colorCode":"SGN","colorName":"세이지 그린"},{"colorCode":"VL","colorName":"바이올렛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJA99Z9Z', '[화이트샌즈] 24SS 스포츠 파일 양말 로제힐 (Rosehill)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF10H3Z', '[화이트샌즈] 24FW 트위드 와이드 보닛햇 바일렌(Bailen)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MT","colorName":"민트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF122H9S', '[화이트샌즈] 24FW 로고플레이 니트 보닛햇 소리아(Soria)', '[{"colorCode":"BC","colorName":"브릭"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"OT","colorName":"오트밀"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF123H5S', '[화이트샌즈] 24FW 램스울 리본 보닛햇 그라스(Grasse)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"DPK","colorName":"딥 핑크"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF126Z9S', '[화이트샌즈] 24FW 두건변형 니트 이어머프 알버타(Alberta)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"IP","colorName":"인디핑크"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF12H9Z', '[화이트샌즈] 24FW 체크 모직 보닛햇 라넬리(Llanelli)', '[{"colorCode":"BOC","colorName":"베이지-오렌지"},{"colorCode":"BRC","colorName":"체크"},{"colorCode":"GPC","colorName":"브라운-레드"},{"colorCode":"GRC","colorName":"체크 그레이-핑크 체크 그레이-레드 체크"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF13H9Z', '[화이트샌즈] 24FW 체크 모직 변형 보닛햇 헤로나(Girona)', '[{"colorCode":"BOC","colorName":"베이지-오렌지"},{"colorCode":"BRC","colorName":"체크"},{"colorCode":"GPC","colorName":"브라운-레드"},{"colorCode":"GRC","colorName":"체크 그레이-핑크 체크 그레이-레드 체크"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF14H7Z', '[화이트샌즈] 24FW 언벨런스 버킷햇 이솔라(Isola)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF15I7T', '[화이트샌즈] 24FW 트위드 군모 변형 햇 비츨리(Beachley)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BGN","colorName":"블루그린"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"VL","colorName":"바이올렛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF16I7T', '[화이트샌즈] 24FW 트위드 보닛햇 헤리스(Harris)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BGN","colorName":"블루그린"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"VL","colorName":"바이올렛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF17I7Z', '[화이트샌즈] 24FW 리버시블 스트링 보닛햇 리드니(Lydney)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF18H3Z', '[화이트샌즈] 24FW 코듀로이 둥근 버킷햇 엘우드(Ellwood)', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CGR","colorName":"챠콜 그레이"},{"colorCode":"LBE","colorName":"라이트 베이지"},{"colorCode":"LPP","colorName":"라이트 퍼플"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF19H3Z', '[화이트샌즈] 24FW 코듀로이 이어머프 보닛햇 아리삭(Arisaig)', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CGR","colorName":"챠콜 그레이"},{"colorCode":"LBE","colorName":"라이트 베이지"},{"colorCode":"LPP","colorName":"라이트 퍼플"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF1K3Z', '[화이트샌즈] 24FW 스트링숏 버킷햇 몬티아(Motilla)', '[{"colorCode":"BC","colorName":"브릭"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"DGR","colorName":"딥 그레이"},{"colorCode":"MU","colorName":"머스터드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF20C7Z', '[화이트샌즈] 24FW 샤무드 볼캡 리스카(Risca)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CM","colorName":"카멜"},{"colorCode":"IP","colorName":"인디핑크"},{"colorCode":"LB","colorName":"연 베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF21C7Z', '[화이트샌즈] 24FW 샤무드 버킷햇 스트론(Strone)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CM","colorName":"카멜"},{"colorCode":"IP","colorName":"인디핑크"},{"colorCode":"LB","colorName":"연 베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF22C7Z', '[화이트샌즈] 24FW 샤무드 마도로스캡 모로치(Morroch)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CM","colorName":"카멜"},{"colorCode":"IP","colorName":"인디핑크"},{"colorCode":"LB","colorName":"연 베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF23C9Z', '[화이트샌즈] 24FW 심볼로고 자카드 볼캡 힐랜드(Hillend)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF24K9Z', '[화이트샌즈] 24FW 심볼로고 자카드 숏 버킷햇 애비뷰(Abbeyview)', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF25K9Z', '[화이트샌즈] 24FW 심볼로고 자카드 리버시블 버킷햇 할비스(Halbeath)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF26C9Z', '[화이트샌즈] 24FW 모노그램 볼캡 던퍼린(Dunfermline)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF27H9Z', '[화이트샌즈] 24FW 모노그램 원형 버킷햇 컬로스(Culross)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF29H9L', '[화이트샌즈] 24FW  자카드 베레모 톨레도(Toledo)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF2I7T', '[화이트샌즈] 24FW 숏 보닛햇 엘바스(Elvas)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DB","colorName":"딥블루"},{"colorCode":"DBO","colorName":"딥 브라운"},{"colorCode":"LPP","colorName":"라이트 퍼플"},{"colorCode":"MU","colorName":"머스터드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF30C3Z', '[화이트샌즈] 24FW 데님라이크 자카드 볼캡 타르브(Tarves)', '[{"colorCode":"DB","colorName":"딥블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF31K3L', '[화이트샌즈] 24FW 데님라이크 자카드 버킷햇 캐사린(Catharine)', '[{"colorCode":"DB","colorName":"딥블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF32C3L', '[화이트샌즈] 24FW 데님라이크 자카드 리본 볼캡 테라사(Terrassa)', '[{"colorCode":"DB","colorName":"딥블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF33C3L', '[화이트샌즈] 24FW 데님라이크 자카드 마도로스캡 아비뇽(Avignon)', '[{"colorCode":"DB","colorName":"딥블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF34K3L', '[화이트샌즈] 24FW 데님라이크 자카드 변형 버킷햇 마타로(Mataro)', '[{"colorCode":"DB","colorName":"딥블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF3I7T', '[화이트샌즈] 24FW 신형 보닛햇 나자레(Nazare)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DBI","colorName":"딥 베이지"},{"colorCode":"DPK","colorName":"딥 핑크"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF46N5Z', '[화이트샌즈] 24FW  니트 비니햇 브룩스(Brooks)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"MGR","colorName":"멜란지그레이"},{"colorCode":"PB","colorName":"핑크베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF47N5Z', '[화이트샌즈] 24FW 니트귀달이 비니 타이니(Tiny)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"MGR","colorName":"멜란지그레이"},{"colorCode":"PB","colorName":"핑크베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF4A9B1', '[화이트샌즈] 24FW 트위드 머리띠 오바르(Ovar)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WJF4A9B2', '[화이트샌즈] 24FW 트위드 집게핀 인버렐(Inverell)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WJF4A9B3', '[화이트샌즈] 24FW 트위드 리본핀 완데라(Wandera)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF4H7T', '[화이트샌즈] 24FW 라운드핏 버킷햇 아빌라(Avila)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DBI","colorName":"딥 베이지"},{"colorCode":"DPK","colorName":"딥 핑크"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF5H3Z', '[화이트샌즈] 24FW 스트링 숏 버킷햇 안도라(Andorra)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"LBL","colorName":"연청/라이트 블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF6A9B1', '[화이트샌즈] 24FW 트위드 머리띠 마리노(Marino)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WJF6A9B2', '[화이트샌즈] 24FW 트위드 집게핀 밀로이(Milroy)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF6H3Z', '[화이트샌즈] 24FW 스트링 버킷햇 오수나(Osuna)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BO","colorName":"브릭오렌지"},{"colorCode":"DBO","colorName":"딥 브라운"},{"colorCode":"KB","colorName":"카키베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF7A9B1', '[화이트샌즈] 24FW 하운드투스 체크 머리띠 아게다(Agueda)', '[{"colorCode":"BC","colorName":"브릭"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WJF7A9B2', '[화이트샌즈] 24FW 하운드투스 체크 집게핀 앨버타(Alberta)', '[{"colorCode":"BC","colorName":"브릭"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WJF7A9B3', '[화이트샌즈] 24FW 공용 하운드투스 체크 집게핀 옐라본(Yelarbon)', '[{"colorCode":"BC","colorName":"브릭"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF7H3Z', '[화이트샌즈] 24FW 스트링 와이드 버킷햇 세비야(Sevilla)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DB","colorName":"딥블루"},{"colorCode":"DBO","colorName":"딥 브라운"},{"colorCode":"DGE","colorName":"딥 그린"},{"colorCode":"LB","colorName":"연 베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF86H7Z', '[화이트샌즈] 24FW 리버시블 보닛햇 크로머(Cromer)', '[{"colorCode":"AB","colorName":"애쉬 브라운 애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"PKB","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF87H7Z', '[화이트샌즈] 24FW 절개 변형 햇 애쉬비(Ashby)', '[{"colorCode":"AB","colorName":"애쉬 브라운 애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"PKB","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF88H7Z', '[화이트샌즈] 24FW 셔링 변형햇 롤스비(Rollesby)', '[{"colorCode":"AB","colorName":"애쉬 브라운 애쉬"},{"colorCode":"BGY","colorName":"블루"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"PKB","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF89U7Z', '[화이트샌즈] 24FW 마도로스캡 데니아(Denia)', '[{"colorCode":"BC","colorName":"브릭"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF8A9B1', '[화이트샌즈] 24FW 데님라이크 자카드 머리띠 포르토(Porto)', '[{"colorCode":"DB","colorName":"딥블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF8C3Z', '[화이트샌즈] 24FW 앞뒤챙 캡 타비라(Tavira)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"DBE","colorName":"다크 베이지"},{"colorCode":"MU","colorName":"머스터드"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF96K5S', '[화이트샌즈] 24FW 울 블렌디드 니트햇 오슬로 (Oslo)', '[{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"DB","colorName":"딥블루"},{"colorCode":"LB","colorName":"연 베이지"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF97Z5S', '[화이트샌즈] 24FW 니트 바라크라바 로렌(Loren)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"MC","colorName":"모카"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WJF9A9B1', '[화이트샌즈] 24FW 변형로고 자카드 집게핀 만델라(Mandela)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WJF9A9B2', '[화이트샌즈] 24FW 변형로고 자카드 리본핀 달린(Darlene)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJF9H3Z', '[화이트샌즈] 24FW 트위드 6각 햇 라고스(Lagos)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MT","colorName":"민트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJS12I8D', '[화이트샌즈] 24SS 아쿠아가드 보닛햇  하드힐 (Hardhill)', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"SGN","colorName":"세이지 그린"},{"colorCode":"VL","colorName":"바이올렛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJS22H3M', '[화이트샌즈] 24SS 코튼 버킷햇 버케티 (Bucketty)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJS23H9M', '[화이트샌즈] 24SS 스토로 버킷햇 우메라 (Womerah)', '[{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJS24H3M', '[화이트샌즈] 24SS 코튼 언밸런스 플로피햇 나바르 (Navarre)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CL","colorName":"코랄"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJS40K0M', '[화이트샌즈] 24SS 라피아 버킷햇 더블린 (Dublin)', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJS41H9M', '[화이트샌즈] 24SS 스트링 버킷햇 클레인 (Clane)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CLB","colorName":"클라우드블루"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"OGN","colorName":"올리브(그린)"},{"colorCode":"SD","colorName":"샌드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJS43H4M', '[화이트샌즈] 24SS 마 블렌디드 플로피햇 아라스 (Arras)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LI","colorName":"라임"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"SGN","colorName":"세이지 그린"},{"colorCode":"TU","colorName":"터콰이즈"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJS44H4M', '[화이트샌즈] 24SS 리본 린넨 버킷햇 로르스 (Loures)', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"SD","colorName":"샌드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJS54H7D', '[화이트샌즈] 24SS 스트랩 버킷햇 뉴쿠르 (Ngukurr)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJS55K3T', '[화이트샌즈] 24SS 스트랩 버킷햇 민지랑 (Minjilang)', '[{"colorCode":"ABL","colorName":"아크틱"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LPK","colorName":"라이트 핑크"},{"colorCode":"PYE","colorName":"핑크 파스텔 옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJS56K3T', '[화이트샌즈] 24SS 리본 버킷햇 코버그 (Cobourg)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJS57K9T', '[화이트샌즈] 24SS 스트링 버킷햇  라쿨라 (Rakula)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BPC","colorName":"버딩피치"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJS63K9M', '[화이트샌즈] 24SS 마 블렌디드 버킷햇 크롤리 (Crawley)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"OG","colorName":"올리브그린"},{"colorCode":"VL","colorName":"바이올렛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJS64H8D', '[화이트샌즈] 24SS 베이직 나일론 버킷햇 사모아 (Samoa)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"CNA","colorName":"시나몬"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJS65I9Z', '[화이트샌즈] 24SS 개더 보닛햇 아소라 (Asora)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJS71H0Z', '[화이트샌즈] 24SS 라피아 버킷햇 보키오 (Vokeo)', '[{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJS79I9Z', '[화이트샌즈] 24SS 리본 보닛햇 보르도 (Bordeaux)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"CM","colorName":"카멜"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"PT","colorName":"피치"},{"colorCode":"SO","colorName":"소라"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJS81I9Z', '[화이트샌즈] 24SS 마 블렌디드 보닛햇 아미앵 (Amiens)', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BGR","colorName":"블루그레이"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"PT","colorName":"피치"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJS83H0M', '[화이트샌즈] 24SS 라피아 버킷햇 마케나 (Makena)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJS84H0M', '[화이트샌즈] 24SS 라피아 버킷햇 키헤이 (Kihei)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJW100Z9K', '[화이트샌즈] 24FW 스웨이드 이어머프 에버렛(Everett)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CM","colorName":"카멜"},{"colorCode":"IP","colorName":"인디핑크"},{"colorCode":"LB","colorName":"연 베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJW102T7J', '[화이트샌즈] 24FW 부클이어머프 버킷햇 오슬리(Ousley)', '[{"colorCode":"ABE","colorName":"애쉬 베이지"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJW103T7J', '[화이트샌즈] 24FW 마름모퀼팅 이어보닛햇 라누아(Ranua)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"IP","colorName":"인디핑크"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJW112T7E', '[화이트샌즈] 24FW 퀼팅 이어 버킷햇 미켈리(Mikkeli)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJW118Z9S', '[화이트샌즈] 24FW 케이블 이어머프 턱끈비니 엘라(Ella)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJW48T7Z', '[화이트샌즈] 24FW 부클 둥근 버킷햇 올리버(Oliver)', '[{"colorCode":"AB","colorName":"애쉬 브라운 애쉬"},{"colorCode":"APK","colorName":"애쉬"},{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GRB","colorName":"그레이 블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJW58H7Z', '[화이트샌즈] 24FW 스웨이드 와이드챙 햇 오스카(Oscar)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IP","colorName":"인디핑크"},{"colorCode":"LB","colorName":"연 베이지"},{"colorCode":"MC","colorName":"모카"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJW61T7Z', '[화이트샌즈] 24FW 부클 트루퍼햇 라일리(Riley)', '[{"colorCode":"AB","colorName":"애쉬 브라운 애쉬"},{"colorCode":"APK","colorName":"애쉬"},{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GRB","colorName":"그레이 블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJW66N9S', '[화이트샌즈] 24FW 이어보닛햇 에즈라(Ezra)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"RBR","colorName":"레드 브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJW68N9S', '[화이트샌즈] 24FW 이어머플러 마코나(Macorna)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"RBR","colorName":"레드 브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJW70Z9S', '[화이트샌즈] 24FW 이어머플러 아리아(Aria)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJW72Z5S', '[화이트샌즈] 24FW 니트햇 벨로보(Belovo)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"LGY","colorName":"라이트그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJW77T7Z', '[화이트샌즈] 24FW 부클 이어머프 캡 뉴 하코트(New Harcourt)', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJW80K7K', '[화이트샌즈] 24FW 공용 후리스 이어머프 버킷햇 뉴 스카디(Skadi)', '[{"colorCode":"AB","colorName":"애쉬 브라운 애쉬"},{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LGN","colorName":"라이트 그린"},{"colorCode":"LPK","colorName":"라이트 핑크"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WJW98T7K', '[화이트샌즈] 24FW 스웨이드 이어버킷햇 레이사(Reisa)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DBR","colorName":"다크브라운"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKA10I3T', '[화이트샌즈] 25FW 코튼 볼륨 자수 보닛 햇 레이카', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CE","colorName":"치즈"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKA11K3T', '[화이트샌즈] 25FW 코튼 볼륨 자수 버킷 햇 헤이그', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BPK","colorName":"베이비 핑크"},{"colorCode":"CE","colorName":"치즈"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"RD","colorName":"레드"},{"colorCode":"SGN","colorName":"세이지 그린"},{"colorCode":"VL","colorName":"바이올렛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKA12C3T', '[화이트샌즈] 25FW 코튼 볼륨 자수 볼 캡 브르노', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BPK","colorName":"베이비 핑크"},{"colorCode":"CE","colorName":"치즈"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"RD","colorName":"레드"},{"colorCode":"SGN","colorName":"세이지 그린"},{"colorCode":"VL","colorName":"바이올렛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WKA14P9Z', '[화이트샌즈] 25FW 모노그램 쟈카드 에코백 체스키', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKF01K8V', '[화이트샌즈] 25FW 큐트 리본 버킷 햇 샤르나', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"OGN","colorName":"올리브(그린)"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKF01Z9Z', '[화이트샌즈] 25FW 코바늘 사막여우 인형 조이', '[{"colorCode":"LBE","colorName":"라이트 베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKF02I8V', '[화이트샌즈] 25FW 큐트 리본 보닛 햇 로시나', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"OGN","colorName":"올리브(그린)"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKF02Z9Z', '[화이트샌즈] 25FW 사막여우 인형 샌디', '[{"colorCode":"LBE","colorName":"라이트 베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKF03I3V', '[화이트샌즈] 25FW 스트링 면혼방 보닛 햇 베라스', '[{"colorCode":"AB","colorName":"애쉬 브라운 애쉬"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKF08Z9Z', '[화이트샌즈] 25FW 모노그램 쟈카드 인형옷 원피스 로프 세트', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKF09Z9Z', '[화이트샌즈] 25FW 모노그램 쟈카드 인형옷 멜빵바지 로프 세트', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKF35B5Z', '[화이트샌즈] 25FW 울 혼방 레트로 베레모 로잔느', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"CM","colorName":"카멜"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"LPK","colorName":"라이트 핑크"},{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKF36C9H', '[화이트샌즈] 25FW 모직 탈착 머플러 캠프캡 토리노', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"CC","colorName":"챠콜"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKF41B9Z', '[화이트샌즈] 25FW 변형 체크 앙고라 베레모 코모네', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKF60C3E', '[화이트샌즈] 25FW 시그니처 체인자수 워싱 코튼 볼 캡 클루지', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BGY","colorName":"블루"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DBE","colorName":"다크 베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKF61C3E', '[화이트샌즈] 25FW 시그니처 라인자수 워싱 코튼 볼 캡 트리에', '[{"colorCode":"AB","colorName":"애쉬 브라운 애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKF83Z5Z', '[화이트샌즈] 24FW 베이직 울 머플러 그리웰(Greywell)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"DBR","colorName":"다크브라운"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"OWH","colorName":"오프화이트"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKF84Z5Z', '[화이트샌즈] 24FW 체크 울 머플러 태들리(Tadley)', '[{"colorCode":"BC","colorName":"브릭"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PP","colorName":"퍼플"},{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKM05V9X', '[화이트샌즈] 25SS UV 프로텍션 10.5 바이저 나폴리', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BGY","colorName":"블루"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKM06V9X', '[화이트샌즈] 25SS UV 프로텍션 10.5 바이저 베리아', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BGR","colorName":"블루그레이"},{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WKM09A9B', '[화이트샌즈] 25SS 트로피컬 리본 냉감 헤어밴드 헤레스(Jerez)', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"PP","colorName":"퍼플"},{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKM111I1S', '[화이트샌즈] 25SS 써머 니트 버킷햇 말카넷(Marqinet)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKM112I1S', '[화이트샌즈] 25SS 써머 니트 보닛햇 보로렌(Bororen)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WKM13A9Z', '[화이트샌즈] 25SS 아세테이트 클래시 포인트핀 엘라지', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"DBR","colorName":"다크브라운"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"NP","colorName":"네오파드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WKM14A9Z', '[화이트샌즈] 25SS 아세테이트 클래시집게핀 나르본(Narbonne)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"DBR","colorName":"다크브라운"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WKM15A9Z', '[화이트샌즈] 25SS 아세테이트 클래시 소형 집게핀 니오르(Niort)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WKM16A9Z', '[화이트샌즈] 25SS 아세테이트 클래시 대형(11.5CM) 집게핀 라살르(Lasalle)', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"DBR","colorName":"다크브라운"},{"colorCode":"MTB","colorName":"민트 블루"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WKM17A9Z', '[화이트샌즈] 25SS 아세테이트 클래시 중형( 9.6cm) 집게핀 아르데스(Ardes)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"DBR","colorName":"다크브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WKM19A9Z', '[화이트샌즈] 25SS 아세테이트 클래시 헤어밴드 브넬르(Venelles)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DBE","colorName":"다크 베이지"},{"colorCode":"DBR","colorName":"다크브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKM44H0G', '[화이트샌즈] 25SS 지사 리본 클로슈햇 앙티브(Antibes)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKM46H0G', '[화이트샌즈] 25SS 천연 레이스 리본 라피아햇 바라체(Varazze)', '[{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKM48V0G', '[화이트샌즈] 25SS 천연 라피아 폴딩썬캡 셸베이(Shell Bay)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS01A9B', '[화이트샌즈] 25SS 린넨 로고 쟈카드 머리띠 앤더슨(Anderson)', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WKS02A9B', '[화이트샌즈] 25SS 린넨 로고 쟈카드 똑딱핀SET 클라인(Clyne)', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WKS08A3B', '[화이트샌즈] 25SS 플로랄 펀칭 코튼 스크런치 아스티(Asti)', '[{"colorCode":"BC","colorName":"브릭"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"MGN","colorName":"민트 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS100V7J', '[화이트샌즈] 25SS 냉감 트로피컬 셔링 선바이저 가르다(Garda)', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS101K8J', '[화이트샌즈] 25SS 에어텍스쳐 셔링 버킷햇 마비니(Mabini)', '[{"colorCode":"APK","colorName":"애쉬"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"MIG","colorName":"민트그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS102I8J', '[화이트샌즈] 25SS 에어텍스쳐 셔링 보닛햇 디난트(Dinant)', '[{"colorCode":"APK","colorName":"애쉬"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"MIG","colorName":"민트그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS103V8J', '[화이트샌즈] 25SS 에어텍스처 셔링 선바이저 록사스(Roxas)', '[{"colorCode":"APK","colorName":"애쉬"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MIG","colorName":"민트그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS110V7Z', '[화이트샌즈] 25SS 롱 반다나캡 엠폴리(Empoli)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS118K0Z', '[화이트샌즈] 25SS 냉감발수 리버시블 버킷햇 유클라(Eucla)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"LGY","colorName":"라이트그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS17I9H', '[화이트샌즈] 25SS 체크리본 보닛햇 팰머스(Falmouth)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS18I9H', '[화이트샌즈] 25SS 체크리본 보닛햇 프래시(Freathy)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS19I9H', '[화이트샌즈] 25SS 체크 탈부착 리본 와이드챙 썬캡 로스던(Rousdon)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"PP","colorName":"퍼플"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS20C9H', '[화이트샌즈] 25SS 체크 짧은챙 셔링햇 로클리(Rockley)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS21I3D', '[화이트샌즈] 25SS 네츄럴 면혼방 변형 보닛햇 로케라(Rokera)', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS22I3C', '[화이트샌즈] 25SS 워셔블 데님 변형 보닛햇 델가니(Delgany)', '[{"colorCode":"BJ","colorName":"흑청"},{"colorCode":"DJ","colorName":"진청"},{"colorCode":"LBL","colorName":"연청/라이트 블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS40H9S', '[화이트샌즈] 25SS 여름 니트햇 두러스', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS42H9S', '[화이트샌즈] 25SS 여름 웨이브니트 햇 비엘라(Biella)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS43I9S', '[화이트샌즈] 25SS 여름 니트 와이드 폴딩썬캡 테네로(Tenero)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS51I4Z', '[화이트샌즈] 25SS 린넨 변형 버킷햇 브라네', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"LGY","colorName":"라이트그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS51U4C', '[화이트샌즈] 25SS 린넨 변형 뉴스보이캡 앨비언(Albion)', '[{"colorCode":"BC","colorName":"브릭"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"SGN","colorName":"세이지 그린"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS53K4C', '[화이트샌즈] 25SS 린넨 퍼퓰러 라운드 버킷햇 케디리(Kediri)', '[{"colorCode":"BC","colorName":"브릭"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"SGN","colorName":"세이지 그린"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS54H9C', '[화이트샌즈] 25SS 체크 와플 에어리 플로피햇 메시나(Messina)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"PT","colorName":"피치"},{"colorCode":"SGN","colorName":"세이지 그린"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS55H9C', '[화이트샌즈] 25SS 체크 와플 에어리 탈부착 차양막 스카프 플로피햇 로베인(Lovein)', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"CR","colorName":"크림"},{"colorCode":"PT","colorName":"피치"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS56K9S', '[화이트샌즈] 25SS 플로랄 물결 한지사 에어리 버킷햇 에데사(Edessa)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MTB","colorName":"민트 블루"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS57H9J', '[화이트샌즈] 25SS 트로피컬 포인트 플로피햇 아보간', '[{"colorCode":"BC","colorName":"브릭"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"DGY","colorName":"다크그레이"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS58Z9Z', '[화이트샌즈] 25SS 바이오 린넨 러블리 셔링햇 토레도 (Toledo)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS59H9Z', '[화이트샌즈] 25SS 트로피컬 리버시블 플로피햇 티라나(Tirane)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"LGY","colorName":"라이트그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS60C3Z', '[화이트샌즈] 25SS 소프티 코튼 스트라이프 볼캡 쿠나르(Coonarr)', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"WH","colorName":"화이트"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS61C3Z', '[화이트샌즈] 25SS 소프티 코튼 스트라이프 버킷햇 프롤리(Prawle)', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"WH","colorName":"화이트"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS62C3Z', '[화이트샌즈] 25SS 소프티 코튼 스트라이프 플로피햇 샤르빌(Charleville)', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"WH","colorName":"화이트"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS63K3Z', '[화이트샌즈] 25SS 플로랄 코튼 스트링리본 라운드 버킷햇 하니아(Hania)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"MGN","colorName":"민트 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS64V3Z', '[화이트샌즈] 25SS 플로랄 펀칭코튼 스트링리본 선바이저 아크레(Acre)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"MGN","colorName":"민트 그린"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS65C3J', '[화이트샌즈] 25SS 플로랄 펀칭 코튼 스트링리본 UV 와이드챙 볼캡 로데스(Rhodes)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"MGN","colorName":"민트 그린"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS75V9Z', '[화이트샌즈] 25SS 트로피컬 냉감발수 리버시블 선바이저 코니아(Konya)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"PP","colorName":"퍼플"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS80C3V', '[화이트샌즈] 25SS 코튼혼방 와이드 볼캡 아리가(Arriga)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"PP","colorName":"퍼플"},{"colorCode":"SGN","colorName":"세이지 그린"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS81I3V', '[화이트샌즈] 25SS 포플러 보닛햇 마리바(Mareeba)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"PP","colorName":"퍼플"},{"colorCode":"SGN","colorName":"세이지 그린"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS82I7V', '[화이트샌즈] 25SS 투톤 트위드 스트링 보닛햇 셰르니(Scerni)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS83N8J', '[화이트샌즈] 25SS 타스란 포터블 변형 버킷햇 일리안(Ilian)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS84H7V', '[화이트샌즈] 25SS 와이드 스트랩 플로피햇 세레스(Ceres)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS85I7V', '[화이트샌즈] 25SS 와이드 스트랩 보닛햇 에디른(Edirne)', '[{"colorCode":"APK","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"SGN","colorName":"세이지 그린"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS86H7V', '[화이트샌즈] 25SS 와이드 스트랩 플로피 썬바이저 루세나(Lucena)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS87H3J', '[화이트샌즈] 25SS 리본스트랩 플로피햇 키라마(Kirrama)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"KH","colorName":"카키OR애쉬카키"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS88I3J', '[화이트샌즈] 25SS 리본포인트 보닛햇 바라타(Barratta)', '[{"colorCode":"APK","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS89V3J', '[화이트샌즈] 25SS 리본포인트 와이드 선바이저 브랜던(Brandon)', '[{"colorCode":"APK","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS91I3V', '[화이트샌즈] 25SS 린넨 트로피칼 쟈카드 보닛햇 알레스(Ales)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS92C3V', '[화이트샌즈] 25SS 린넨 로고 쟈카드 볼캡 달라만(Dalaman)', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS93C3V', '[화이트샌즈] 25SS 린넨 로고 쟈카드 마도로스캡 탐페레(Tampere)', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS94H3V', '[화이트샌즈] 25SS 린넨 로고 쟈카드 버킷 햇 린도스(Lindos)', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS95K7Z', '[화이트샌즈] 25SS 와플 텍스처 리본 버킷햇 아가페(Agape)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"MIG","colorName":"민트그레이"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS96H7Z', '[화이트샌즈] 25SS 와플텍스처 리본 플로피햇 로노이(Lonoy)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS97C7Z', '[화이트샌즈] 25SS 와플 텍스처 리본 볼캡 알리샤(Alicia)', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"MIG","colorName":"민트그레이"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS98K7J', '[화이트샌즈] 25SS 냉감 트로피컬 셔링 버킷햇 콜마르(Colmar)', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"PP","colorName":"퍼플"},{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKS99I7J', '[화이트샌즈] 25SS 냉감 트로피컬 셔링 보닛햇 엘니도(El Nido)', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"PP","colorName":"퍼플"},{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW04N9S', '[화이트샌즈] 25FW 투톤 울 부클 귀달이 비니 알리노', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW05Z9S', '[화이트샌즈] 25FW 투톤 울 부클 바라클라바 페르나', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"MT","colorName":"민트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW06N9S', '[화이트샌즈] 25FW 투톤 울 부클 머플러 비니 부르스', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"MT","colorName":"민트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW07I7E', '[화이트샌즈] 25FW 고밀도 퀼팅 패딩 보닛 햇 오네가', '[{"colorCode":"AB","colorName":"애쉬 브라운 애쉬"},{"colorCode":"ABE","colorName":"애쉬 베이지"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW08K7E', '[화이트샌즈] 25FW 고밀도 퀼팅 패딩 귀달이 버킷 햇 로바니', '[{"colorCode":"AB","colorName":"애쉬 브라운 애쉬"},{"colorCode":"ABE","colorName":"애쉬 베이지"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW09I7E', '[화이트샌즈] 25FW 고밀도 퀼팅 패딩 퍼 보닛 햇 루블린', '[{"colorCode":"AB","colorName":"애쉬 브라운 애쉬"},{"colorCode":"ABE","colorName":"애쉬 베이지"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW10Z9Z', '[화이트샌즈] 25FW 울혼방 그리드 체크 머플러 메리다', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CM","colorName":"카멜"},{"colorCode":"CR","colorName":"크림"},{"colorCode":"DGY","colorName":"다크그레이"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW11Z7Z', '[화이트샌즈] 25FW 투톤 컬러믹스 머플러 로이카', '[{"colorCode":"BGR","colorName":"블루그레이"},{"colorCode":"LV","colorName":"라벤더"},{"colorCode":"MU","colorName":"머스터드"},{"colorCode":"PT","colorName":"피치"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW12Z7Z', '[화이트샌즈] 25FW 와이드 스트라이프 컬러믹스 머플러 리보스', '[{"colorCode":"BR","colorName":"브라운"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW13H7V', '[화이트샌즈] 25FW 울혼방 오버 체크 뉴스보이 캡 브노바', '[{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW13Z7Z', '[화이트샌즈] 25FW 멀티 스트라이프 머플러 델루스', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"WI","colorName":"와인"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW14I7V', '[화이트샌즈] 25FW 울혼방 오버 체크 보닛 햇 베로나', '[{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW15H7V', '[화이트샌즈] 25FW 울혼방 오버 체크 더블챙 햇 브뤼셀', '[{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW15Z7H', '[화이트샌즈] 25FW 보헤미안 언발란스 머플러 트렌토', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"OR","colorName":"오렌지"},{"colorCode":"RB","colorName":"레인보우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW16U7E', '[화이트샌즈] 25FW 울혼방 타탄 체크 귀달이 헌팅 캡 투르느', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"CM","colorName":"카멜"},{"colorCode":"LV","colorName":"라벤더"},{"colorCode":"VL","colorName":"바이올렛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW16Z7H', '[화이트샌즈] 25FW 에스닉 머플러 하르렘', '[{"colorCode":"UM","colorName":"울트라마린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW17H7E', '[화이트샌즈] 25FW 울혼방 타탄체크 마도로스 캡 루카노', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"CM","colorName":"카멜"},{"colorCode":"LV","colorName":"라벤더"},{"colorCode":"VL","colorName":"바이올렛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW17Z7H', '[화이트샌즈] 25FW 멀티체크 머플러 체르넌', '[{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW18Z7H', '[화이트샌즈] 25FW 멀티체크 머플러 플젠느', '[{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW19N9S', '[화이트샌즈] 25FW 울혼방 투톤 니트 보닛햇 세르디', '[{"colorCode":"APC","colorName":"애쉬피치"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"LBE","colorName":"라이트 베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW19Z7H', '[화이트샌즈] 25FW 타탄 체크 머플러 비르민', '[{"colorCode":"MCC","colorName":"멀티 체크"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW20C9S', '[화이트샌즈] 25FW 울 니트 귀달이퍼 볼 캡 드보라', '[{"colorCode":"AB","colorName":"애쉬 브라운 애쉬"},{"colorCode":"ASB","colorName":"핑크 애쉬블루"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW20Z7H', '[화이트샌즈] 25FW 타탄 체크 머플러 도빌르', '[{"colorCode":"BL","colorName":"블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW21N9S', '[화이트샌즈] 25FW 알파카 니트 귀달이퍼 비니 아르고', '[{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"IP","colorName":"인디핑크"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MIG","colorName":"민트그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW21Z7H', '[화이트샌즈] 25FW 빅 레오파드 머플러 린츠나', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"DB","colorName":"딥블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW22H9S', '[화이트샌즈] 25FW 알파카 니트 귀달이퍼 둥근 햇 아르벨', '[{"colorCode":"APK","colorName":"애쉬"},{"colorCode":"DBE","colorName":"다크 베이지"},{"colorCode":"DGY","colorName":"다크그레이"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW23Z9S', '[화이트샌즈] 25FW 울 후드 머플러 트리카', '[{"colorCode":"ABE","colorName":"애쉬 베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"LBE","colorName":"라이트 베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW24B9S', '[화이트샌즈] 25FW 울 니트 스트랩 베레모 렌시아', '[{"colorCode":"ABE","colorName":"애쉬 베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"LV","colorName":"라벤더"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW25Z9S', '[화이트샌즈] 25FW 울 글렌체크 후드 숄 브레다', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW26H9S', '[화이트샌즈] 25FW 앙고라 니트 햇 비아레', '[{"colorCode":"ABE","colorName":"애쉬 베이지"},{"colorCode":"BC","colorName":"브릭"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WKW27K9Z', '[화이트샌즈] 25FW 탈착 머플러 헤어리 둥근 햇 리온나', '[{"colorCode":"ASG","colorName":"애쉬그레이"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CM","colorName":"카멜"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WKW30H9S', '[화이트샌즈] 25FW 리사이클  헤어리 롱 보닛햇 시에라', '[{"colorCode":"AB","colorName":"애쉬 브라운 애쉬"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"DB","colorName":"딥블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WKW31H9S', '[화이트샌즈] 25FW 헤어리 숏 바라클라바 타르사', '[{"colorCode":"APP","colorName":"애쉬퍼플"},{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW32N9S', '[화이트샌즈] 25FW 울 혼방 스트라이프 비니 카드라', '[{"colorCode":"BGY","colorName":"블루"},{"colorCode":"DGE","colorName":"딥 그린"},{"colorCode":"DGY","colorName":"다크그레이"},{"colorCode":"IP","colorName":"인디핑크"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW33N9S', '[화이트샌즈] 25FW 투톤 스트라이프 니트 햇 벨로나', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"KH","colorName":"카키OR애쉬카키"},{"colorCode":"LV","colorName":"라벤더"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW34H9S', '[화이트샌즈] 25FW 앙고라 울 혼방 보헤미안 니트 햇 헤르타', '[{"colorCode":"BBN","colorName":"블랙빈"},{"colorCode":"IP","colorName":"인디핑크"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MC","colorName":"모카"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW35Z9S', '[화이트샌즈] 25FW 라쿤 울 혼방 하트 이어머프 리보르', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW37K7H', '[화이트샌즈] 25FW 튤립 탈착 귀달이 햇 벨루오', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW38T7H', '[화이트샌즈] 25FW 부클 이어머프 캡 키엘로', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"MC","colorName":"모카"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW39Z7H', '[화이트샌즈] 25FW 부클 후드 바라클라바 루아벤', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WKW40T9H', '[화이트샌즈] 25FW 울 헤어 이어머프 캡 오비크', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"CR","colorName":"크림"},{"colorCode":"GY","colorName":"그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW42H9C', '[화이트샌즈] 25FW 울혼방 에코퍼 버킷햇 오셀라', '[{"colorCode":"AB","colorName":"애쉬 브라운 애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"CR","colorName":"크림"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW43Z9Z', '[화이트샌즈] 25FW 니트 에코 퍼 넥 워머 레지아', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LBE","colorName":"라이트 베이지"},{"colorCode":"LGY","colorName":"라이트그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW44Z7Z', '[화이트샌즈] 25FW 에코 퍼 이어머프 마르티', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"OWH","colorName":"오프화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WKW96Z9Z', '[화이트샌즈] 엠보싱 극세사 무릎담요', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLA12A9Z', '[화이트샌즈] 26SS 스톤 블렌드 대형(10.5cm) 아세테이트 집게핀 사비아', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"PLV","colorName":"피치라벤더"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLA13A9Z', '[화이트샌즈] 26SS 스톤 블렌드 소형(4.5cm) 아세테이트 집게핀 에리니', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLA14A9Z', '[화이트샌즈] 26SS 스톤 블렌드 중형(8cm) 아세테이트 헤어핀 델로스', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LV","colorName":"라벤더"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLA15A9Z', '[화이트샌즈] 26SS 소프트 마블 대형(10cm) 아세테이트 집게핀 미로스', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CR","colorName":"크림"},{"colorCode":"SFP","colorName":"소프트핑크"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLA16A9Z', '[화이트샌즈] 26SS 소프트 마블 반달 중형(5.5cm) 아세테이트 집게핀 엘로스', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CR","colorName":"크림"},{"colorCode":"SFP","colorName":"소프트핑크"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLA17A9Z', '[화이트샌즈] 26SS 소프트 마블 원형 중형(7cm) 아세테이트 집게핀 로나르', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CM","colorName":"카멜"},{"colorCode":"SBU","colorName":"소프트블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLA18A9Z', '[화이트샌즈] 26SS 클래식 미니(2.5CM) 아세테이트 집게핀 리베오', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CM","colorName":"카멜"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLA19A9Z', '[화이트샌즈] 26SS 오라 글로우 대형(12cm) 아세테이트 집게핀 니세아', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"SDB","colorName":"샌드베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLA20A9Z', '[화이트샌즈] 26SS 오라 글로우 중형(9.5cm) 아세테이트집게핀 레로스', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"SDB","colorName":"샌드베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLA21A9Z', '[화이트샌즈] 26SS 오라 글로우 아세테이트 헤어 포크핀 누벨라', '[{"colorCode":"CR","colorName":"크림"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"SDB","colorName":"샌드베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLA22A9Z', '[화이트샌즈] 26SS 미라주 마블  특대형(13.5cm) 아세테이트 집게핀 린다르', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CM","colorName":"카멜"},{"colorCode":"LGY","colorName":"라이트그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLA23A9Z', '[화이트샌즈] 26SS 미라주 마블 대형(11.5cm) 아세테이트 집게핀 마레사', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CM","colorName":"카멜"},{"colorCode":"LGY","colorName":"라이트그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLA24A9Z', '[화이트샌즈] 26SS 미라주 마블 아세테이트 소형 헤어핀 소레아', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"SDB","colorName":"샌드베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLA25A9Z', '[화이트샌즈] 26SS 미라주 마블 중형(8.5cm) 아세테이트 헤어핀 레오라', '[{"colorCode":"SBU","colorName":"소프트블루"},{"colorCode":"SDB","colorName":"샌드베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLA59Z9Z', '[화이트샌즈] 26SS 키링 폴더블 경량 보스톤백 레오나', '[{"colorCode":"LE","colorName":"레몬"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLA60A9Z', '[화이트샌즈] 26SS 부클 페넥폭스 인형 키링 모리', '[{"colorCode":"DBE","colorName":"다크 베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLA61A9Z', '[화이트샌즈] 26SS 리프레시 리조트 샌디옷+ 진주 목걸이 하로나', '[{"colorCode":"AMT","colorName":"아쿠아민트"},{"colorCode":"LE","colorName":"레몬"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"VL","colorName":"바이올렛"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM10B9S', '[화이트샌즈] 26SS 쿨링 니트 베레모 아스테', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"MB","colorName":"멜란지블루"},{"colorCode":"PT","colorName":"피치"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM11K9S', '[화이트샌즈] 26SS 브리즈 니트 버킷햇 바레나', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"PT","colorName":"피치"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM12H9S', '[화이트샌즈] 26SS 브리즈 니트 쉐이드햇 솔레나', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"PT","colorName":"피치"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM13I9S', '[화이트샌즈] 26SS 플로랄 니트 레이스 보닛햇 누비아', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"PT","colorName":"피치"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM14I9Z', '[화이트샌즈] 26SS 코튼 크로셰 써머 니트 보닛햇 안드라', '[{"colorCode":"ABE","colorName":"애쉬 베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"PBL","colorName":"파우더블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM15K9S', '[화이트샌즈] 26SS 브리즈 써머 니트 웨이브햇 에나르', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"PT","colorName":"피치"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM16V9S', '[화이트샌즈] 26SS 리파인드 써머 니트 바이저 베리나', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"OT","colorName":"오트밀"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM17I9S', '[화이트샌즈] 26SS 리파인드 써머 니트 보닛햇 데라나', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"OT","colorName":"오트밀"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLM21V9E', '[화이트샌즈] 26SS 스카프핏 모듈밴드 바이저 크레타', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"PP","colorName":"퍼플"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM22H9E', '[화이트샌즈] 26SS 퓨어 와이드 플로피햇 아스타', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM23H3E', '[화이트샌즈] 26SS 플로랄 와이드 플로피햇 토리나', '[{"colorCode":"NV","colorName":"네이비"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM24H9V', '[화이트샌즈] 26SS 플로랄 듀얼 리본 플로피햇 아네라', '[{"colorCode":"CR","colorName":"크림"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM25V9V', '[화이트샌즈] 26SS 플로랄 듀얼 리본 썬캡 루지아', '[{"colorCode":"CR","colorName":"크림"},{"colorCode":"MT","colorName":"민트"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM39Z0Z', '[화이트샌즈] 26SS 라피아 클로라 플로피햇 에올리', '[{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM40Z0Z', '[화이트샌즈] 26SS 라피아 선셋 페도라햇 오리바', '[{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM41Z1Z', '[화이트샌즈] 26SS 지사 스플링클 플로피햇 세이나', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM42Z1Z', '[화이트샌즈] 26SS 지사 데이지 플로피햇 알로라', '[{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM43Z0Z', '[화이트샌즈] 26SS 라피아 그레이스 클로슈햇 나레아', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM44Z0Z', '[화이트샌즈] 26SS 롱리본 라피아 클로슈햇 세리나', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM45Z0Z', '[화이트샌즈] 26SS 라피아 투톤 로프 버킷햇 엘라니', '[{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM50C0Z', '[화이트샌즈] 26SS 천연 라피아 스트라이프 썬캡 라베르', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CRP","colorName":"코랄핑크"},{"colorCode":"DB","colorName":"딥블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM51C0Z', '[화이트샌즈] 26SS 천연 라피아 와이드 UV 캡 사이라', '[{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM52C0Z', '[화이트샌즈] 26SS 천연 라피아 숏 UV 캡 시엘로', '[{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM53C9Z', '[화이트샌즈] 26SS UV차단 와이드 스트라이프 썬캡 카일라', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CRP","colorName":"코랄핑크"},{"colorCode":"DB","colorName":"딥블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM54C9Z', '[화이트샌즈] 26SS UV차단 숏 스트라이프 썬캡 파로스', '[{"colorCode":"NR","colorName":"내츄럴"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLM65P9Z', '[화이트샌즈 블랙라벨] 26SS 태슬 크로셰 토드백 트레사', '[{"colorCode":"LIC","colorName":"라일락"},{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PGN","colorName":"팜그린"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLM66P9Z', '스트라이프 지사 숄더백 에게르', '[{"colorCode":"CM","colorName":"카멜"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLM67P9Z', '라피아 옴브레 숄더백 트론드', '[{"colorCode":"NGY","colorName":"(X)내츄럴/그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLM93Z9Z', '[화이트샌즈] 26SS 페이즐리 에코백 세리온', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"LBE","colorName":"라이트 베이지"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLM94Z3Z', '[화이트샌즈] 26SS 플로랄 에코백 모레나', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"CR","colorName":"크림"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLS01A3B', '[화이트샌즈] 26SS 플로랄 반다나 헤어밴드 라고아', '[{"colorCode":"CM","colorName":"카멜"},{"colorCode":"LPK","colorName":"라이트 핑크"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLS01I9V', '[화이트샌즈] 26SS 소프트 크레이프 보닛햇 미엘르', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CR","colorName":"크림"},{"colorCode":"MGN","colorName":"민트 그린"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLS02A3B', '[화이트샌즈] 26SS 플로랄 3겹 리본 집게핀 노디아', '[{"colorCode":"CM","colorName":"카멜"},{"colorCode":"LPK","colorName":"라이트 핑크"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLS02H9V', '[화이트샌즈] 26SS 내츄럴 컷 린넨 플로피햇 멜리아', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"OT","colorName":"오트밀"},{"colorCode":"SDB","colorName":"샌드베이지"},{"colorCode":"SGR","colorName":"스모키그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLS03A3B', '[화이트샌즈] 26SS 플로랄 3겹 리본 스크런치 칼리아', '[{"colorCode":"CM","colorName":"카멜"},{"colorCode":"LPK","colorName":"라이트 핑크"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLS03V9V', '[화이트샌즈] 26SS 슬러브 커브 썬캡 에이린', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IP","colorName":"인디핑크"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLS04A9B', '[화이트샌즈] 26SS 텐셀 셔링 헤어밴드 폴리아', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LBE","colorName":"라이트 베이지"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLS04K9V', '[화이트샌즈] 26SS 슬러브 변형절개 버킷햇 아로센', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IP","colorName":"인디핑크"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLS05A9B', '[화이트샌즈] 26SS 플로랄 스트라이프 헤어밴드 아마리', '[{"colorCode":"DB","colorName":"딥블루"},{"colorCode":"DBE","colorName":"다크 베이지"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLS05K9V', '[화이트샌즈] 26SS 보호시크 메쉬배색 버킷햇 사오린', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CR","colorName":"크림"},{"colorCode":"LGY","colorName":"라이트그레이"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLS06A9B', '[화이트샌즈] 26SS 플로랄 스트라이프 스토퍼 업 스크런치 엘리오', '[{"colorCode":"DB","colorName":"딥블루"},{"colorCode":"DBE","colorName":"다크 베이지"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLS06H9V', '[화이트샌즈] 26SS 에어리 프릴 플로피햇 리오라', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LBE","colorName":"라이트 베이지"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLS07A9B', '[화이트샌즈] 26SS 링클 페미닌 집게핀 브리사', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"MIG","colorName":"민트그레이"},{"colorCode":"PBE","colorName":"피치베이지"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLS07I9V', '[화이트샌즈] 26SS 에어리 프릴 보닛햇 아리나', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"LBE","colorName":"라이트 베이지"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLS08C9V', '[화이트샌즈] 26SS 라이트 선쉐이드 볼캡 리안느', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CR","colorName":"크림"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"LV","colorName":"라벤더"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WLS09A9B', '[화이트샌즈] 26SS 플로랄 프린지 헤어밴드 메로스', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLS09H9V', '[화이트샌즈] 26SS 라이트 선쉐이드햇 에도라', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CR","colorName":"크림"},{"colorCode":"LGY","colorName":"라이트그레이"},{"colorCode":"LV","colorName":"라벤더"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLS11A9B', '[화이트 샌즈] 26SS 보타닉 레이스 삼각 머플러 테레나', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLS18K3Z', '[화이트샌즈] 26SS 페미닌 브로더리 코튼 버킷햇 마리스', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLS19C3Z', '[화이트샌즈] 26SS 페미닌 브로더리 코튼 볼캡 리오네', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLS20K3Z', '[화이트샌즈] 26SS 코튼 서피스 펀칭 버킷햇 벨리나', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"MIG","colorName":"민트그레이"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WLS46V9X', '[화이트샌즈] 26SS UV 프로텍션 11.5 바이저 카엘리', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"DP","colorName":"다크핑크"},{"colorCode":"LBE","colorName":"라이트 베이지"},{"colorCode":"NV","colorName":"네이비"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WNGM01AR', '[화이트샌즈] 21SS 코튼 지사 블렌드 니트 비니', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WNGW0A3D', '[화이트샌즈] 21FW 공용 코튼 블렌디드 니트 비니', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WNGW0A5D', '[화이트샌즈] 21FW 울 블렌디드 니트 비니', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CR","colorName":"크림"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WNGW0A8H', '21FW 공용 플러피 니트 비니', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BPK","colorName":"베이비 핑크"},{"colorCode":"DN","colorName":"데님"},{"colorCode":"ID","colorName":"인디고"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"LV","colorName":"라벤더"},{"colorCode":"MU","colorName":"머스터드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WOHM8A0JBODY', '(미사용)리타 바디', '[{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WPGM0A8Z', '[화이트샌즈] TPU 라자르 파우치', '[{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WS17-034BK', 'RAFFIA CAYRO HAT', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WS17-034BL', 'RAFFIA CAYRO HAT', '[{"colorCode":"BL","colorName":"블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WS17-034GR', 'RAFFIA CAYRO HAT', '[{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WSAEGNXXHXA', '핸드카', '[{"colorCode":"GN","colorName":"그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WSAEWHAM', '썬캡 DP 거치대', '[{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WSAEWHAML', 'ONLY 두상', '[{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WSAEWHMMM', '헤어밴드 DP 스탠드', '[{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WSAEWHSML', '원목 모자 DP 스탠드', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WSAEWHZGM', '구형 모자 DP 스탠드', '[{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WSEP19', '[화이트샌즈] 행사제품 19,000원', '[{"colorCode":"ML","colorName":"멀티"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WSEP29', '[화이트샌즈] 행사제품 29,000원', '[{"colorCode":"ML","colorName":"멀티"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WSPB02', '화이트샌즈 쇼핑백 (L)', '[{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WSPEBRL', '원목 모자 DP 스탠드 L (판매용)', '[{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WSPEBRM', '원목 모자 DP 스탠드 M (판매용)', '[{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WSPEWHL', '원목 두상 모자 DP 스탠드 L (판매용)', '[{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'L')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WSPEWHM', '원목 두상 모자 DP 스탠드 M (판매용)', '[{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WVGM110G', '[화이트샌즈] 21SS 뉴 버클 아무디', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WVGM120G', '★ [화이트샌즈] 천연 라피아 썬캡 와이드 뉴 라자르', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WVGM130G', '[화이트샌즈] 21SS 라피아 드루핑 선바이저 가드너', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WVGM1A1L', '[화이트샌즈] 21SS 내맘대로 썬캡 지사 레인보우 카멜라', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WVGM1A4L', '★ [화이트샌즈] 내맘대로 썬캡 린넨 와이드 리버시블 카멜라', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"LV","colorName":"라벤더"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"RD","colorName":"레드"},{"colorCode":"TB","colorName":"티파니블루OR틸블루"},{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WVGM1A8L', '★ [화이트샌즈] 내맘대로 썬캡 UV 차단 와이드 카멜라', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WVGM1B0L', '(미사용)[화이트샌즈] 21SS 천연 라피아 썬캡 엣지 라자르', '[{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WVGM1C0L', '(미사용)[화이트샌즈] 21SS 천연 라피아 썬캡 리버시블 라자르', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"RD","colorName":"레드"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WVGM8A6L', '[화이트샌즈] 21SS 내맘대로 썬캡 레더 카멜라', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"},{"colorCode":"TN","colorName":"탄"},{"colorCode":"WI","colorName":"와인"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WVHM1A0O', '[화이트샌즈] 22SS 천연 라피아 썬캡 페트라', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CC","colorName":"챠콜"},{"colorCode":"CO","colorName":"코코아"},{"colorCode":"DBR","colorName":"다크브라운"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"},{"colorCode":"SGN","colorName":"세이지 그린"},{"colorCode":"YE","colorName":"옐로우"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WVHM1A0W', '[화이트샌즈] 22SS 천연 라피아 썬캡 나디아', '[{"colorCode":"GY","colorName":"그레이"},{"colorCode":"NV","colorName":"네이비"},{"colorCode":"PK","colorName":"(인디)핑크&베리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WVHM1A3O', '[화이트샌즈] 22SS 내맘대로 썬캡 리버시블 체크 제니', '[{"colorCode":"ASH","colorName":"애쉬"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BPK","colorName":"베이비 핑크"},{"colorCode":"CE","colorName":"치즈"},{"colorCode":"DU","colorName":"더스트"},{"colorCode":"GN","colorName":"그린"},{"colorCode":"IV","colorName":"아이보리"},{"colorCode":"RD","colorName":"레드"},{"colorCode":"SGN","colorName":"세이지 그린"},{"colorCode":"VL","colorName":"바이올렛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WVHM1B0O', '화이트샌즈 22SS 천연 라피아 썬캡 칼레야', '[{"colorCode":"CO","colorName":"코코아"},{"colorCode":"GY","colorName":"그레이"},{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PK","colorName":"(인디)핑크&베리"},{"colorCode":"PN","colorName":"피넛"},{"colorCode":"SGN","colorName":"세이지 그린"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WVHM1B3O', '[화이트샌즈] 22SS 내맘대로 썬캡 리버시블 페넬로피 아이보리 밴드', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"CL","colorName":"코랄"},{"colorCode":"LV","colorName":"라벤더"},{"colorCode":"SBL","colorName":"스카이블루"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '악세사리', 'WVHM1C3O', '[화이트샌즈] 22SS 내맘대로 썬캡 리버시블 데이지 아이보리 밴드', '[{"colorCode":"BL","colorName":"블루"},{"colorCode":"BRE","colorName":"브릭 레드"},{"colorCode":"JD","colorName":"제이드"},{"colorCode":"LV","colorName":"라벤더"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WVHM8A6L', '[화이트샌즈] 22SS 공용 레더 바이저 테리', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BOD","colorName":"보르도"},{"colorCode":"DBR","colorName":"다크브라운"},{"colorCode":"TN","colorName":"탄"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WVHM8A9X', '[화이트샌즈] 22SS UV 프로텍션 8.5 바이저 소니아', '[{"colorCode":"BE","colorName":"(핑크&크림)베이지"},{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BL","colorName":"블루"},{"colorCode":"IV","colorName":"아이보리"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WVHM9A9W', '화이트샌즈 내맘대로 썬캡 UV차단 숏 카멜라', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WVIM1A0M', '[화이트샌즈] 23SS 천연 라피아 썬캡 메간', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"NR","colorName":"내츄럴"},{"colorCode":"PN","colorName":"피넛"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WXHA6901', '울 펠트 컴포트햇(바디)', '[{"colorCode":"BK","colorName":"블랙"},{"colorCode":"BR","colorName":"브라운"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'M')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WZGA0A8Z', '모자 에어 홀더', '[{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WZGA0A9Z', '(미사용)지퍼백(신규코드따서 중단처리)', '[{"colorCode":"WH","colorName":"화이트"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WZGA0B8Z', '미니 에어 펌프', '[{"colorCode":"BK","colorName":"블랙"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

INSERT INTO products (brand, category, product_code, product_name, colors, required_materials, size)
VALUES ('화이트샌즈', '모자', 'WZMGBXM', '(미사용)지퍼백', '[{"colorCode":"ML","colorName":"멀티"}]'::jsonb, '["원단","메인라벨","케어라벨","행택","지퍼백"]'::jsonb, 'ONE SIZE')
ON CONFLICT (product_code) DO UPDATE SET
  product_name = EXCLUDED.product_name,
  colors = EXCLUDED.colors,
  brand = EXCLUDED.brand,
  category = EXCLUDED.category;

