# 의상 디자이너 자기소개 사이트

Adri Fluid 다크 테마 스타일의 정적 포트폴리오입니다. HTML, CSS, JavaScript만 사용합니다.

## 로컬 미리보기

```bash
npx --yes serve .
```

브라우저에서 표시된 주소(예: `http://localhost:3000`)로 접속합니다.

## GitHub Pages 배포

1. GitHub에서 새 저장소 생성
2. 이 폴더에서:

```bash
git init
git add index.html styles.css main.js 자기소개서.md images/ README.md .gitignore
git commit -m "Add static portfolio site"
git branch -M main
git remote add origin https://github.com/USER/REPO.git
git push -u origin main
```

3. 저장소 **Settings → Pages** 에서 아래 중 하나 선택:
   - **Deploy from a branch** → Branch: `gh-pages` / Folder: `/ (root)` (권장, 한 번만 설정)
   - 또는 **GitHub Actions** (`.github/workflows/deploy-pages.yml` 사용 시)
4. `https://havits10237-maker.github.io/havits10237.github.io/` 에서 확인 (1~3분 소요)

### 이미 push만 완료한 경우 (한 번만 하면 됨)

[저장소 Settings → Pages](https://github.com/havits10237-maker/havits10237.github.io/settings/pages) 에서 **Build and deployment → Source** 를 **Deploy from a branch** 로 바꾸고, Branch **`gh-pages`** / **`/ (root)`** 를 선택한 뒤 Save.

## 파일

| 파일 | 설명 |
|------|------|
| `index.html` | 공개 사이트 |
| `styles.css` | 스타일 |
| `main.js` | 스크롤 애니메이션 |
| `자기소개서.md` | 채용용 상세 원고 |
| `images/` | 경력 카드 이미지 |

## 수정

`[이름]`, `[이메일]`, 브랜드명 등 대괄호 항목을 `index.html`과 `자기소개서.md`에서 함께 바꿉니다.
