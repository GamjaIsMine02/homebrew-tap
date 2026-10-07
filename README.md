# MINIPLE Homebrew tap

기존 Chrome YouTube Music 앱/PWA를 AppleScript로 조작하는 경량 MINIPLE v1의 개발용 Cask입니다. 최신 `0.4.2-dev.1`에는 세 단계 연결 안내·메뉴 정리·버튼 지연 개선이 포함됩니다. 확장 설치나 MINIPLE 내부의 별도 Google 로그인은 필요하지 않습니다.

```sh
brew install --cask GamjaIsMine02/tap/miniple
open /Applications/MINIPLE.app
```

Apple Silicon과 macOS 13 Ventura 이상 대상입니다. Apple 공증이 없는 개발 빌드이므로 macOS가 실행을 차단할 수 있습니다. Homebrew는 Gatekeeper를 우회하거나 앱을 자동 실행하지 않습니다.

2026-10-08 공개 Cask로 `0.4.2-dev.1` 다운로드·업데이트 설치를 확인했습니다. 설치 앱의 서명·버전·arm64·최소 macOS 13.0·구성 검사가 통과했습니다. 이 Mac에서 실제 재생 상태 토글 두 번과 원래 상태 복원을 확인했습니다. macOS 실행 평가는 `rejected`이며 보안 설정은 변경하지 않았습니다. 최초 설치 승인 GUI와 다른 Mac은 미검증입니다.

처음 연결 전에는 앱 실행 시 연결 안내가 열립니다. 기존 Chrome YouTube Music을 열고 MINIPLE의 `시스템 권한 요청`을 승인하세요. Chrome 메뉴의 `보기 → 개발자 → Allow JavaScript from Apple Events`는 직접 켜야 합니다. MINIPLE의 `연결 확인`으로 연결을 확인합니다. 이 권한은 YouTube Music 전용이 아닌 Chrome 단위입니다. [상세 연결 안내](https://github.com/GamjaIsMine02/miniple-releases#처음-연결)

기본 설치 폴더는 `/Applications`입니다. Homebrew가 관리하지 않는 같은 이름의 앱은 덮어쓰지 마세요. 기존 앱을 보존하려면 같은 이름의 앱이 없는 다른 폴더를 선택하세요.

```sh
brew install --cask --appdir="$HOME/Applications" GamjaIsMine02/tap/miniple
```

기존 Homebrew 설치는 다음 명령으로 업데이트합니다. 이전 독립형 Google 로그인 프로필과 설정을 자동 삭제하지 않습니다.

```sh
brew update
brew upgrade --cask GamjaIsMine02/tap/miniple
```

다운로드·연결 방법·서명 제한은 [MINIPLE 배포 안내](https://github.com/GamjaIsMine02/miniple-releases)를 확인하세요. 설치 스크립트에서 Chrome 설정·macOS 권한·격리 속성을 변경하지 않습니다.

이 저장소는 앱 파일을 보관하는 곳이 아닌 Cask 설치 정의를 보관하는 tap입니다. 앱 ZIP은 GitHub Release에 있습니다. [Homebrew 배포 과정](https://github.com/GamjaIsMine02/miniple-releases/blob/main/DISTRIBUTION.md)에서 개발자 배포와 사용자 설치 단계를 확인하세요.
