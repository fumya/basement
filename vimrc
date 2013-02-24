set nocompatible
setlocal omnifunc=syntaxcomplete#Complete

" ��{�ݒ�
set shellslash                           " �t�@�C�����̓W�J�ɃX���b�V�����g�p
colorscheme desert                       " �w�i�F
set showmode                             " ���݂̃��[�h��\��
set ruler                                " ���[���[�̕\��
"set columns=80                           " �X�N���[����̗�
"set lines=72                             " �E�B���h�E�̍���
syntax on                                " �V���^�b�N�X�n�C���C�g��L���ɐݒ�
set tabstop=2 shiftwidth=2 softtabstop=0 " �^�u�̕\���ݒ�
set expandtab                            " �^�u���󔒕����ɓW�J
set autoindent smartindent               " �����C���f���g�A�X�}�[�g�C���f���g
set guifont=MS_Gothic:h13
set backspace=indent,eol,start

" ���͕⏕
set formatoptions+=m                     " ���`�I�v�V�����A�}���`�o�C�g�n��ǉ�
set foldmethod=marker foldmarker={{{,}}} " �܂��ގ��

" �����֘A
set wrapscan                             " �Ō�܂Ō���������ŏ��ɖ߂�
set incsearch                            " �C���N�������^���T�[�`���s��
set hlsearch                             " �������ʂ��n�C���C�g����

" �t�@�C���֘A
set nobackup                             " �o�b�N�A�b�v���쐬���Ȃ�
set autoread                             " �O���G�f�B�^�ŏ���������ꂽ�ꍇ�A�����œǂݒ���
set noswapfile                           " �X���b�v���쐬���Ȃ�
set hidden                               " �ۑ����Ȃ��ő��̃t�@�C����\�����邱�Ƃ��o����悤�ɂ���

" �\���֘A
set showmatch                            " �Ί��ʂ̕\�����n�C���C�g
set showcmd                              " �R�}���h���X�e�[�^�X���C���ɕ\������
set number                               " �s�ԍ���\������
set nowrap                               " ��ʕ��Ő܂�Ԃ��Ȃ�
set sidescroll=1                         " �����X�N���[���̍��ݕ�
set sidescrolloff=5                      " �J�[�\���̉E�܂��͍��ɕ\�����镶����
set list                                 " �s��������\������
set listchars=tab:>\ ,eol:<              " �s�������̕\�����@
set title                                " �^�C�g���\��
set scrolloff=5                          " �J�[�\���̏�܂��͉��ɕ\������s��

" �X�e�[�^�X���C���֘A
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" insert���[�h��(ctrl+)hjkl�ړ��𗘗p����
imap <c-h> <Left>
imap <c-j> <Down>
imap <c-k> <Up>
imap <c-l> <Right>

" �S�p�X�y�[�X�̎��o��
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=reverse ctermfg=white gui=reverse guifg=white
endfunction
 
if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    autocmd ColorScheme       * call ZenkakuSpace()
    autocmd VimEnter,WinEnter * match ZenkakuSpace /�@/
  augroup END
  call ZenkakuSpace()
endif
