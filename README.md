# MINIPLE Homebrew tap

MINIPLE 독립형 YouTube Music 미니 플레이어의 개발용 Cask입니다.

```sh
brew install --cask GamjaIsMine02/tap/miniple
```

Apple Silicon용 개발 빌드이며 Apple 공증이 없습니다. macOS가 실행을 차단할 수 있습니다. Homebrew 설치가 Gatekeeper 검사를 우회하지는 않습니다.

기본 설치 위치는 `/Applications/MINIPLE.app`입니다. 같은 이름의 기존 앱을 덮어쓰지 마세요. 기존 앱을 유지하려면 비어 있는 다른 앱 폴더를 사용하세요.

```sh
brew install --cask --appdir="$HOME/Applications" GamjaIsMine02/tap/miniple
```

앱 다운로드, 로그인 절차, 지원 환경과 제한은 [MINIPLE 배포 안내](https://github.com/GamjaIsMine02/miniple-releases)를 확인하세요. Chrome 확장은 필요하지 않습니다.

```sh
brew update
brew upgrade --cask GamjaIsMine02/tap/miniple
```

일반 삭제에서는 로그인 프로필을 삭제하지 않습니다. 이 Cask에는 기기별 토큰을 생성하는 설치 스크립트나 보안 설정 변경이 없습니다.
